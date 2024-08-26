#include <stdio.h>

int main(void){
	// Reads in a string of 20 characters or less,
	// and prints out the string in reverse, followed by a newline

	char input[21] = {'\0'};
	char reverseInput[21] = {'\0'};

	printf("Please enter 20 characters or less: ");
	scanf("%20s", input);

	// Putting the input into a 2nd array in reverse order
	int reverseIndex = 0;

	for (int i = 20; i>=0; i--){
		// Skipping null characters
		if (input[i] != '\0'){
			reverseInput[reverseIndex] = input[i];
			reverseIndex++;
		}
	}

	// Printing out the reverse array
	printf("%s\n", reverseInput);
	

	return 0;
}