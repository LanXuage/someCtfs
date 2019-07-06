#include <stdio.h>
#include <string.h>

int main()
{
	char *a, *b;
	a = "\0";
	b = "aaaa";
	printf("%d", strlen(a));
	printf("%d", strncmp(a, b, strlen(a)));
	return 0;
}
