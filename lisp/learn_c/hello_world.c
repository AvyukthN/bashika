#include <stdio.h>

int main(int argc, char** argv){
	puts("Hello, World!");
	printf("Hellow, World! - printf\n");
	printf("argc - %d\n", argc);
	printf("=== argv array ====\n");
	for (int i = 0; i < argc; i++){
		printf("%d - %s\n", i, argv[i]);
	}
	return 0;
}
