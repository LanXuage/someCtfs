#include <stdio.h>
#include <time.h>

unsigned long long sub_4012B0(unsigned long long a1)
{
	unsigned long long result; // rax
	signed long long v2; // rdx
	unsigned long long v3; // rcx

	result = a1;
	v2 = -1LL;
	v3 = 32LL;
	do
	{
		v2 ^= v2 << v3;
		printf("-------------------------\n");
		printf("v3 = %ld\n", v3);
		printf("v2 = %ld\n", v2);
		unsigned long long right = result >> v3;
		unsigned long long left = result << v3;
		printf("result >> v3 = %ld\n", right);
		printf("result << v3 = %ld\n", left);
		printf("v2 & (result >> v3) = %ld\n", v2 & (result >> v3));
		printf("~v2 & (result << v3) = %ld\n", ~v2 & (result << v3));
		result = v2 & (result >> v3) | ~v2 & (result << v3);
		v3 >>= 1;
	}
	while ( v3 );
	return result;
}

int main()
{
	// printf("%ld\n", time(0));
	printf("%lld", sub_4012B0(0x6161616161616161));
	return 0;
}
