#include <stdio.h>

int main(void){
	//Takes a positive integer representing the number of years a person
	//has spend in education so far and prints their level of educational
	//attainment so far.

	int years;
	printf("Enter your number of years of education: ");

	int validInput = scanf("%d", &years);
	if (validInput < 1 || years < 0) {
    	printf("Invalid input\n");
    	return 0;
  	}

	printf("Your level of educational attainment is ");
	if (years < 8){
		printf("Primary");
	}else if (years < 13){
		printf("Secondary");
	}else{
		printf("Tertiary");
	}
	printf(" level education.\n");

	return 0;
}