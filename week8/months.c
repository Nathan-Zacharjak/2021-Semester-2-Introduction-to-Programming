#include <stdio.h>

int main(void){
	//Takes an integer between 1 and 12
	//and prints out the equivalent month name

	int number;
	printf("Enter the number of a month: ");
	int validInput = scanf("%2d", &number);
	if (validInput < 1) {
    	printf("Invalid input\n");
    	return 0;
  	}

	printf("Your month is ");
	switch(number){
		case 1:
		printf("Jan");
		break;

		case 2:
		printf("Feb");
		break;

		case 3:
		printf("Mar");
		break;

		case 4:
		printf("Apr");
		break;

		case 5:
		printf("May");
		break;

		case 6:
		printf("Jun");
		break;

		case 7:
		printf("Jul");
		break;

		case 8:
		printf("Aug");
		break;

		case 9:
		printf("Sep");
		break;

		case 10:
		printf("Oct");
		break;

		case 11:
		printf("Nov");
		break;

		case 12:
		printf("Dec");
		break;

		default:
		printf("not a month");

	}
	printf("\n");

	return 0;
}