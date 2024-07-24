#include <stdio.h>
#include "mpc.h"

static char input[2048];

// constant integer values assigned by C that we'll use for error handling
enum { BASHIKAVAL_NUM, BASHIKAVAL_ERROR, BASHIKAVAL_SYMBOL, BASHIKAVAL_SEXP, BASHIKAVAL_QEXP };
enum { BERROR_DIV_ZERO, BERROR_BAD_OP, BERROR_BAD_NUM };

typedef struct bashikaValue{
	int type;
	long number;

	char* error;
	char* symbol;
	
	int count;
	struct bashikaValue** bvCell;
} bashikaValue;

// pass in the value of number
bashikaValue* bashikaValNum(long x){
	bashikaValue* bv = malloc(sizeof(bashikaValue));

	bv->type = BASHIKAVAL_NUM;
	bv->number = x;

	return bv;
}

// pass in the error constants for the types of errors defined above with enum
bashikaValue* bashikaValError(char* errorMessage){
	bashikaValue* bv = malloc(sizeof(bashikaValue));

	bv->type = BASHIKAVAL_ERROR;
	// allocates memory for error message with length of message + 1 for null terminator in C strings
	bv->error = malloc(strlen(errorMessage) + 1);
	strcpy(bv->error, errorMessage);

	return bv;
}

bashikaValue* bashikaValSymbol(char* parsedSymbol){
	bashikaValue* bv = malloc(sizeof(bashikaValue));

	bv->type = BASHIKAVAL_SYMBOL;
	bv->symbol = malloc(strlen(parsedSymbol) + 1);
	strcpy(bv->symbol, parsedSymbol);

	return bv;
}

bashikaValue* bashikaValSexp(void){
	bashikaValue* bv = malloc(sizeof(bashikaValue));

	bv->type = BASHIKAVAL_SEXP;
	bv->count = 0;
	bv->bvCell = NULL;

	return bv;
}

bashikaValue* bashikaValQexp(void){
	bashikaValue* bv = malloc(sizeof(bashikaValue));

	bv->type = BASHIKAVAL_QEXP;
	bv->count = 0;
	bv->bvCell = NULL;

	return bv;
}

void freeBashikaValue(bashikaValue* bv){
	switch (bv->type){
		case BASHIKAVAL_NUM: 
			break;

		case BASHIKAVAL_ERROR: 
			free(bv->error);
			break;

		case BASHIKAVAL_SYMBOL: 
			free(bv->symbol);
			break;

		case BASHIKAVAL_QEXP:
		case BASHIKAVAL_SEXP:
			for (int i = 0; i < bv->count; i++){
				freeBashikaValue(bv->bvCell[i]);
			}

			free(bv->bvCell);
			// free(bv->count);
			break;

		/*
			for (int i = 0; i < bv->count; i++){
				freeBashikaValue(bv->bvCell[i]);
			}

			free(bv->bvCell);
			break;
		*/
	}

	free(bv);
}

bashikaValue* bashikaValueReadNumber(mpc_ast_t* tree){
	errno = 0;
	long x = strtol(tree->contents, NULL, 10);
	return errno == ERANGE ? bashikaValError("INVALID NUMBER") : bashikaValNum(x);
}

bashikaValue* bashikaValueAdd(bashikaValue* bvAddTo, bashikaValue* bvToAdd){
	bvAddTo->count += 1;
	// reallocates memory for the s-expression list based on the size of the bvCell list * the amount of memory of each element of the list (which is the size of the bashikaValue struct that is each element of the list)
	// realloc returns a new pointer to the reallocated memory block
	bvAddTo->bvCell = realloc(bvAddTo->bvCell, sizeof(bashikaValue*) * bvAddTo->count);

	// adds the bashikaValue struct to the next available index in the bvCell array
	bvAddTo->bvCell[bvAddTo->count - 1] = bvToAdd;

	return bvAddTo;
}

// this is a recursive function to traverse the AST and transform it into S-expressions
// it works similarly to the evaluateInput function defined later down this file but instead of doing operations between two identified numbers and adding them to some term it finds expressions and adds them to a list of expressions (our sought after S-expression)
bashikaValue* bashikaValueRead(mpc_ast_t* tree){
	// if the tree node is a symbol or number we immediately just return a bashikaValue struct of that type
	if (strstr(tree->tag, "number")){
		return bashikaValueReadNumber(tree);
	}
	if (strstr(tree->tag, "symbol")){
		return bashikaValSymbol(tree->contents);
	}

	// if root (>) or S-expression then we need to create an empty list and fill it with the contained expressions
	bashikaValue* bv = NULL;
	if (strcmp(tree->tag, ">") == 0){
		bv = bashikaValSexp();
	}
	if (strstr(tree->tag, "sexpression")){
		bv = bashikaValSexp();
	}
	if (strstr(tree->tag, "qexpression")){
		bv = bashikaValQexp();
	}

	for (int i = 0; i < tree->children_num; i++){
		if (strcmp(tree->children[i]->contents, "(") == 0){
			continue;
		}
		if (strcmp(tree->children[i]->contents, ")") == 0){
			continue;
		}
		if (strcmp(tree->children[i]->contents, "[") == 0){
			continue;
		}
		if (strcmp(tree->children[i]->contents, "]") == 0){
			continue;
		}
		if (strcmp(tree->children[i]->tag, "regex") == 0){
			continue;
		}

		bv = bashikaValueAdd(bv, bashikaValueRead(tree->children[i]));
	}

	return bv;
}

// forward declaring this function because printBashikaValueExpression calls it and vice versa so we can't declare one before the other and expect proper compilation
// there is no possible declaration ordering in the source file to resolve this dependency without forward declaring
void printBashikaValue(bashikaValue* bv);

void printBashikaValueExpression(bashikaValue* bv, char openParenth, char closeParenth){
	putchar(openParenth);
	for (int i = 0; i < bv->count; i++){
		printBashikaValue(bv->bvCell[i]);

		if (i < (bv->count - 1)){
			putchar(' ');
		}
	}
	putchar(closeParenth);
}

void printBashikaValue(bashikaValue* bv){
	switch(bv->type){
		case BASHIKAVAL_NUM:
			printf("%li", bv->number);
			break;
		case BASHIKAVAL_ERROR:
			printf("ERROR: %s", bv->error);
			break;
		case BASHIKAVAL_SYMBOL:
			printf("%s", bv->symbol);
			break;
		case BASHIKAVAL_SEXP:
			printBashikaValueExpression(bv, '(', ')');
			break;
		case BASHIKAVAL_QEXP:
			printBashikaValueExpression(bv, '[', ']');
			break;
	}
}

void printBashikaValueLN(bashikaValue* bv){
	printBashikaValue(bv);
	putchar('\n');
}

int getNumberOfNodes(mpc_ast_t* tree){
	if (tree->children_num == 0){
		return 1;
	}
	else if (tree->children_num >= 1){
		int count = 1;
		for (int i = 0; i < tree->children_num; i++){
			char* reg = "regex";
			if (strcmp(tree->children[i]->tag,reg) != 1){
				count += getNumberOfNodes(tree->children[i]);
			}
		}

		return count;
	}

	return 0;
}

bashikaValue* bvPop(bashikaValue* bv, int index){
	bashikaValue* element = bv->bvCell[index];

	// memmove(destination pointer, source pointer, number of bytes to copy);
	// basically after getting the element at some index in the bvCell array
	// the following memmove line moves the succeding elements of the bvCell 
	// array up by 1 to cover the hole left by the popped element
	memmove(&bv->bvCell[index], &bv->bvCell[index+1], sizeof(bashikaValue*) * (bv->count - index - 1));

	bv->count -= 1;

	// now we need to resize the memory block required for the bvCell array 
	// because we just removed an element and we can do this with realloc()
	// realloc(pointer to previously allocated memory block, new size of the memory block in bytes);
	// realloc returns a pointer to the resized memory block
	bv->bvCell = realloc(bv->bvCell, sizeof(bashikaValue*) * bv->count);

	return element;
}

bashikaValue* bvTake(bashikaValue* bv, int index){
	bashikaValue* element = bvPop(bv, index);
	freeBashikaValue(bv);
	return element;
}

bashikaValue* useOperator(bashikaValue* bv, char* operator){
	for (int i = 0; i < bv->count; i++){
		if (bv->bvCell[i]->type != BASHIKAVAL_NUM){
			freeBashikaValue(bv);

			return bashikaValError("Cannot operate on non-number types");
		}
	}

	bashikaValue* first = bvPop(bv, 0);

	if ((strcmp(operator, "-") == 0) && bv->count == 0){
		// sets the num property in the bv struct to a negative of itself
		// basically like saying arr[i] = -arr[i];
		first->number = -first->number;
	}

	while (bv->count > 0){
		bashikaValue* currElem = bvPop(bv, 0);

		if (strcmp(operator, "+") == 0){
			first->number += currElem->number;
		}
		if (strcmp(operator, "*") == 0){
			first->number *= currElem->number;
		}
		if (strcmp(operator, "-") == 0){
			first->number -= currElem->number;
		}
		if (strcmp(operator, "/") == 0){
			if (currElem->number == 0){
				freeBashikaValue(first);
				freeBashikaValue(currElem);
				return bashikaValError("Division by 0 prohibited");
			}

			first->number /= currElem->number;
		}

		freeBashikaValue(currElem);
	}

	freeBashikaValue(bv);

	return first;
}

bashikaValue* bvDealloc(bashikaValue* bv, int index){
	if (index >= bv->count){
		return bashikaValError("Cannot Deallocate from index out of range");
	}
	for (int i = index; i < bv->count; i++){
		freeBashikaValue(bv->bvCell[i]);
	}

	return bv;
}

// error handling macro
#define LASSERT(args, condition, errorMessage) \
	if (!(condition)){ freeBashikaValue(args); return bashikaValError(errorMessage); }

bashikaValue* useHead(bashikaValue* bv) {
	LASSERT(bv, bv->count == 1, "Function 'head' passed too many arguments can only pass 1");
	LASSERT(bv, bv->bvCell[0]->type == BASHIKAVAL_QEXP, "Function 'head' passed incorrect type, needs type Q-Expression");
	LASSERT(bv, bv->bvCell[0]->count != 0, "Function 'head' passed empty Q-Expression []");

	bashikaValue* element = bvTake(bv, 0);
	while (element->count > 1){
		freeBashikaValue(bvPop(element, 1));
	}
	// bvDealloc(element, 1);

	return element;
}

bashikaValue* useTail(bashikaValue* bv){
	LASSERT(bv, bv->count == 1, "Function 'tail' passed too many arguments can only pass 1");
	LASSERT(bv, bv->bvCell[0]->type == BASHIKAVAL_QEXP, "Function 'tail' passed incorrect type, needs type Q-Expression");
	LASSERT(bv, bv->bvCell[0]->count != 0, "Function 'tail' passed empty Q-Expression []");

	bashikaValue* element = bvTake(bv, 0);
	freeBashikaValue(bvPop(element, 0));

	return element;
}

bashikaValue* useList(bashikaValue* bv){
	bv->type = BASHIKAVAL_QEXP;

	return bv;
}

bashikaValue* bvJoin(bashikaValue* bv1, bashikaValue* bv2){
	while (bv2->count > 0){
		bv1 = bashikaValueAdd(bv1, bvPop(bv2, 0));
	}

	freeBashikaValue(bv2);

	return bv1;
}

bashikaValue* useJoin(bashikaValue* bv){
	for (int i = 0; i < bv->count; i++){
		LASSERT(bv, bv->bvCell[i]->type == BASHIKAVAL_QEXP, "Function 'join' passed wrong type, Q-Expression required");
	}

	bashikaValue* joined = bvPop(bv, 0);
	while (bv->count > 0){
		joined = bvJoin(joined, bvPop(bv, 0));
	}

	freeBashikaValue(bv);

	return joined;
}

bashikaValue* evaluateSexpression(bashikaValue* bv);
bashikaValue* evalQExpression(bashikaValue* bv);

bashikaValue* useFunc(bashikaValue* bv, char* func){
	if (strcmp(func, "head") == 0){
		return useHead(bv);
	}
	if (strcmp(func, "tail") == 0){
		return useTail(bv);
	}
	if (strcmp(func, "list") == 0){
		return useList(bv);
	}
	if (strcmp(func, "join") == 0){
		return useJoin(bv);
	}
	if (strcmp(func, "eval") == 0){
		return evalQExpression(bv);
	}
	if (strstr("+*-/", func)){
		return useOperator(bv, func);
	}

	freeBashikaValue(bv);
	return bashikaValError("Unkown function");
}

bashikaValue* evaluateBashikaValue(bashikaValue* bv){
	if (bv->type == BASHIKAVAL_SEXP){
		bashikaValue* newBV = evaluateSexpression(bv);

		return newBV;
	}

	return bv;
}

bashikaValue* evaluateSexpression(bashikaValue* bv){
	for (int i = 0; i < bv->count; i++){
		bv->bvCell[i] = evaluateBashikaValue(bv->bvCell[i]);
	}

	for (int i = 0; i < bv->count; i++){
		if (bv->bvCell[i]->type == BASHIKAVAL_ERROR){
			return bvTake(bv, i);
		}
	}

	if (bv->count == 0){
		return bv;
	}
	if (bv->count == 1){
		return bvTake(bv, 0);
	}


	bashikaValue* operator = bvPop(bv, 0);
	if (operator->type != BASHIKAVAL_SYMBOL){
		freeBashikaValue(operator);
		freeBashikaValue(bv);

		return bashikaValError("S-Expression must start with symbol");
	}

	// bashikaValue* answer = useOperator(bv, operator->symbol);
	bashikaValue* answer = useFunc(bv, operator->symbol);
	freeBashikaValue(operator);

	return answer;
}

bashikaValue* evalQExpression(bashikaValue* bv){
	LASSERT(bv, bv->count == 1, "Function 'eval' requires 1 argument");
	LASSERT(bv, bv->bvCell[0]->type == BASHIKAVAL_QEXP, "Function 'eval' passed incorrect type");

	bashikaValue* exp = bvTake(bv, 0);
	exp->type = BASHIKAVAL_SEXP;

	return evaluateSexpression(exp);
}

int main (int argc, char** argv){
	mpc_parser_t* Number  = mpc_new("number");
	mpc_parser_t* Symbol = mpc_new("symbol");
	mpc_parser_t* Sexpression = mpc_new("sexpression");
	mpc_parser_t* Qexpression = mpc_new("qexpression");
	mpc_parser_t* Expression = mpc_new("expression");
	mpc_parser_t* Bashika = mpc_new("bashika");

	// number		: /-?[0-9]+(.[0-9]+)?/ ;
	mpca_lang(MPCA_LANG_DEFAULT,
		"																			\
			number		: /-?[0-9]+/ ;												\
		    symbol		: '+' | '-' | '*' | '/' 									\
						| \"list\" | \"head\" | \"tail\" | \"join\" | \"eval\" ;	\
			sexpression : '(' <expression>* ')' ;									\
			qexpression : '[' <expression>* ']' ;									\
			expression  : <number> | <symbol> | <sexpression> | <qexpression> ;		\
			bashika		: /^/ <expression>* /$/ ;									\
		",
		Number, Symbol, Sexpression, Qexpression, Expression, Bashika);

	while (1) {
		fputs("bashika> ", stdout);
		fgets(input, 2048, stdin);

		mpc_result_t parseRes;
		if (mpc_parse("<stdin>", input, Bashika, &parseRes)){

			bashikaValue* bv = evaluateBashikaValue(bashikaValueRead(parseRes.output));
			// printBashikaValueLN(bv);
			
			// bashikaValue* answer = evaluateBashikaValue(bv);
			// printf("= %li\n", answer->number);
			printBashikaValueLN(bv);
			freeBashikaValue(bv);
			// freeBashikaValue(bv);
			// freeBashikaValue(answer);
			mpc_ast_delete(parseRes.output);
		}
		else {
			mpc_err_print(parseRes.error);
			mpc_err_delete(parseRes.error);
		}

	}

	mpc_cleanup(6, Number, Symbol, Sexpression, Qexpression, Expression, Bashika);
	return 0;
}
