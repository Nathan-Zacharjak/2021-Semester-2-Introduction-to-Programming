#include <stdio.h>

int main(void) {
	// Takes up to 10 integers from the user, and prints the max, min and average
	int ages[10] = {0};
	int maximum = 0;
	int minimum = 150;
	// Make sum a float to ensure the average is calculated as a float
	float sum = 0;
	float average = 0;

	int agesIndex = 0;
	int validInputs = 0;

	while (agesIndex < 10){
		printf("Enter an age: \n");
		validInputs = scanf("%d", &ages[agesIndex]);
		

		// If the user didn't enter an integer, prompt them to enter one
		if (validInputs <1) {
			scanf("%*[^\n]%*c");
			printf("Please enter an integer");
			validInputs = scanf("%d", &ages[agesIndex]);
	

		// Stop asking for input if the user entered a -1
		} else if (ages[agesIndex] == -1){
			ages[agesIndex] = 0;
			break;

		// Prompt the user if they enter an age too small or large
		} else if ((ages[agesIndex] > 150 || ages[agesIndex] < 0)){
			ages[agesIndex] = 0;
			printf("Please enter an age between 0 and 150.\n");

		} else {
			// else a valid input, seeing if the input number is the new max/min
			if (ages[agesIndex] > maximum){
				maximum = ages[agesIndex];
			}

			if (ages[agesIndex] < minimum){
				minimum = ages[agesIndex];
			}

			// Adding to the running sum and 1 to the index
			sum = sum + ages[agesIndex];
			agesIndex++;
		}
	}

	if (agesIndex != 0){
		average = sum/agesIndex;
	}

	printf("%d %d %g\n", maximum, minimum, average);

	return 0;
}