#include <stdio.h>
#include <stdlib.h>

int main(void){
	// Takes a number of integers from the user and prints them
	// as odd and even numbers separately

	// Getting the amount of numbers
	int count = 0;
	printf("Enter how many numbers you want to input: ");
	scanf("%d", &count);


	// Asking the user to input their numbers
	int *numbers = malloc(sizeof(int) * count);
	int evenCount = 0;
	int oddCount = 0;

	for(int i = 0; i<count; i++){
		printf("Please enter number %d: ", i + 1);
		scanf("%d", &numbers[i]);

		if (numbers[i] % 2 == 0){
			evenCount++;
		}else{
			oddCount++;
		}
	}

	// Allocating just enough space for even and odd numbers
	int *evens = malloc(sizeof(int) * evenCount);
	int *odds = malloc(sizeof(int) * oddCount);
	int evensIndex = 0;
	int oddsIndex = 0;

	for(int i = 0; i<count; i++){
		if (numbers[i] % 2 == 0){
			evens[evensIndex] = numbers[i];
			evensIndex++;
		}else{
			odds[oddsIndex] = numbers[i];
			oddsIndex++;
		}
	}

	free(numbers);

	// Printing out the values of the even and odd numbers
	for (int i = 0; i < oddCount; i++){
		// This if-statement nonsense is just because auto-grader doesn't want
		// a space on the end...
		if (i == oddCount - 1){
			printf("%d", odds[i]);
		}else{
			printf("%d ", odds[i]);
		}
	}
	printf("\n");

	free(odds);

	for (int i = 0; i < evenCount; i++){
		if (i == evenCount - 1){
			printf("%d", evens[i]);
		}else{
			printf("%d ", evens[i]);
		}
	}
	printf("\n");

	free(evens);


	return 0;
}