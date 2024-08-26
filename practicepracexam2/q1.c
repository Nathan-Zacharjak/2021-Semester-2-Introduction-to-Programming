#include <stdio.h>

int main(void){
	double numbers[10] = {0};
	double maxSoFar = 0;

	for (int i = 0; i < 10; i++){
		printf("Enter a number: ");
		scanf("%lf", &numbers[i]);

		if (i == 0){
			maxSoFar = numbers[i];
		} else if (maxSoFar < numbers[i]){
			maxSoFar = numbers[i];
		}
	}

	printf("The largest of your numbers is: %g\n", maxSoFar);

	return 0;
}