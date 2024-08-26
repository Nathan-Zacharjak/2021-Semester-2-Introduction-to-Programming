#include <stdio.h>

int main(void) {
	// Takes an array of integers, stores the even and odd numbers in separate
	// arrays, and prints their values.
	int nums[11] = {11, 3, 9, 7, 6, 10, 13, 17, 2, 8, 3};
	int evens[11] = {0};
	int odds[11] = {0};

	int numsLength = sizeof(nums)/sizeof(int);
	int evensIndex = 0;
	int oddsIndex = 0;

	for (int i = 0; i<numsLength; i++){
		if (nums[i] % 2 == 0){
			evens[evensIndex] = nums[i];
			printf("Even: %d\n", evens[evensIndex]);
			evensIndex++;
		}

		if (nums[i] % 2 == 1 || nums[i] % 2 == -1){
			odds[oddsIndex] = nums[i];
			printf("Odd: %d\n", odds[oddsIndex]);
			oddsIndex++;
		}
	}

	return 0;
}