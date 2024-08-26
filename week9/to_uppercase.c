#include <stdio.h>

int main(void) {
	// Reads a lowercase name of no more than 20 characters from the user,
	// then prints the name in uppercase

	char name[21] = {'\0'};
	printf("Please enter a lower-case name: ");
	scanf("%20s", name);

	int characterIndex = 0;
	char character = name[characterIndex];
	
	while(character != '\0'){
		if (character == ','){
			printf(",");
		} else {
			printf("%c", character - 32);
		}
		
		characterIndex++;
		character = name[characterIndex];
	}

	printf("\n");


	return 0;
}