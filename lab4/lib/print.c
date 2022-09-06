#include "print.h"
#include "sbi.h"

void puts(char *s) {
    // unimplemented
	while (*s != '\0')
	{
		sbi_ecall(0x1,0x0,(int)*s,0,0,0,0,0);
		s ++;
	}
	return;
}

void puti(int x) {
    // unimplemented
    	int Stack[11];
	int top = 0;
    	while (x > 0)
	{
		Stack[++top] = x % 10;
		x = x / 10;
	}
	while (top > 0)
		sbi_ecall(0x1,0x0,Stack[top--]+0x30,0,0,0,0,0);
	return;
}
