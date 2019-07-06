#include <stdio.h>
#include <openssl/aes.h>
#include <string.h>

int main()
{
	AES_KEY aes_key;
	AES_set_decrypt_key("aaaaaaaaaaaaaaaa", 128, &aes_key);
	char *s;
	AES_decrypt("a\0aaaa", s, &aes_key);
	int len = strlen(s);
	int i = 0;
	for (; i < len / 8; i++)
	{
		printf("%llx", s + i);
	}
	printf("%llx\n\n\n", s + i);

	char *a, *b;
	a = "a\0";
	b = "aaaa";
	printf("%d", strlen(a));
	//printf("%d", strncmp(a, b, strlen(a)));
	return 0;
}
