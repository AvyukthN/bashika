#include <stdio.h>
#include "mpc.h"

static char input[2048];

int main (int argc, char** argv){
	while (1) {
		fputs("lispy> ", stdout);
		fgets(input, 2048, stdin);
		printf("No you're a %s", input);
	}
}
