#include <stdio.h>

int main(void){
	//Takes a positive, 3 digit integer and prints the integer in reverse, vertically.
	int integer;
	printf("Enter a positive, 3 digit integer: ");

	int validInput = scanf("%d", &integer);
	//Checking the input is a 3 digit integer, else printing an error message
	if (validInput < 1) {
    	printf("Value entered is not a number\n");
    	return 0;
  	} else if (integer < 0) {
  		printf("Value entered is not positive.\n");
  		return 0;
  	} else if (integer >= 1000 || integer < 100){
  		printf("Value entered is not 3 digits.\n");
  		return 0;
  	}

	int digit1 = integer % 10;
	int digit2 = integer/10 % 10;
	int digit3 = integer/100 % 10;

	printf("%d\n", digit1);
	printf("%d\n", digit2);
	printf("%d\n", digit3);


	return 0;
}