#include <stdio.h>

int main(void) {
	// Reads a comma separated name of no more than 20 characters from the user,
	// then prints the name in uppercase

	char name[21] = {'\0'};
	printf("Please enter a comma-separated name: ");
	scanf("%20s", name);

	int characterIndex = 0;
	char character = name[characterIndex];
	
	while(character != '\0'){
		if (character == ','){
			// Print out commas as is
			printf(",");
		} else if (character >= 97 && character <= 122){
			// Print out lowercase letters as uppercase
			printf("%c", character - 32);
		} else if (character >= 65 && character <= 90){
			// Print out uppercase letters as is
			printf("%c", character);
		}
		
		characterIndex++;
		character = name[characterIndex];
	}

	printf("\n");


	return 0;
}