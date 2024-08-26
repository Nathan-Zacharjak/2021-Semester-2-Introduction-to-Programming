#include <stdio.h>
#include <stdlib.h>

int main(void){
	// Reads in a sequence of single-decimal temperatures and
	// prints them back out in reverse order

	// Firstly, getting the number of temperatures
	int count = 0;
	printf("Enter the number of temperatures to input: ");
	scanf("%d", &count);


	// Asking the user for temperatures
	float *temperatures = malloc(sizeof(float) * count);

	for(int i = 0; i<count; i++){
		printf("Please enter temperature %d to 1 decimal point: ", i + 1);
		scanf("%f", &temperatures[i]);
	}

	// Printing the temperatures in reverse order of being entered,
	// to 1 decimal place
	for(int i = count - 1; i>-1; i--){
		// This if-statement nonsense is just because auto-grader doesn't want
		// a space on the end...
		if (i == 0){
			printf("%0.1f", temperatures[i]);
		}else{
			printf("%0.1f ", temperatures[i]);
		}
	}
	printf("\n");

	free(temperatures);


	return 0;
}