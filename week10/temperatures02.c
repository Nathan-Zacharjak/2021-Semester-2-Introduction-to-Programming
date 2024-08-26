#include <stdio.h>
#include <stdlib.h>

int main(void){
	// Reads in a sequence of single-decimal temperatures and
	// prints them back out in reverse order

	// Hold 5 temperatures in the initial array
	float *temperatures = malloc(sizeof(float) * 5);
	float *temperaturesNew;
	float inputTemp = 0;
	int arraySize = 5;
	int count = 0;
	int usingNewTemperatureArray = 0;

	// Asking the user for temperatures
	while(inputTemp != -100.0){

		// While the temperatures can fit in the array and the user does not quit, read temperatures
		while(inputTemp != -100.0 && arraySize > count){
			printf("Please enter a temperature, type '-100.0' to finish: ");
			if (usingNewTemperatureArray == 0){
				scanf("%f", &temperatures[count]);
				inputTemp = temperatures[count];
			}else{
				scanf("%f", &temperaturesNew[count]);
				inputTemp = temperaturesNew[count];
			}

			count++;
		}

		// If the user has filled up the current array,
		// create and start using a new one that is double the size
		if (arraySize <= count){
			arraySize = arraySize * 2;

			if (usingNewTemperatureArray == 0){
				temperaturesNew = malloc(sizeof(float) * arraySize);

				for (int i = 0; i < arraySize/2; i++){
					temperaturesNew[i] = temperatures[i];
				}

				free(temperatures);
				usingNewTemperatureArray = 1;
			}else{
				temperatures = malloc(sizeof(float) * arraySize);

				for (int i = 0; i < arraySize/2; i++){
					temperatures[i] = temperaturesNew[i];
				}

				free(temperaturesNew);
				usingNewTemperatureArray = 0;
			}
		}
	}


	// Printing the temperatures in reverse order of being entered,
	// to 1 decimal place
	for(int i = count - 2; i>-1; i--){
		if (i == 0){
			if (usingNewTemperatureArray == 0){
				printf("%0.1f", temperatures[i]);
			}else{
				printf("%0.1f", temperaturesNew[i]);
			}
		}else{
			if (usingNewTemperatureArray == 0){
				printf("%0.1f ", temperatures[i]);
			}else{
				printf("%0.1f ", temperaturesNew[i]);
			}
		}
	}
	printf("\n");

	// Freeing whichever array was being used in the final print
	if (usingNewTemperatureArray == 0){
		free(temperatures);
	}else{
		free(temperaturesNew);
	}


	return 0;
}