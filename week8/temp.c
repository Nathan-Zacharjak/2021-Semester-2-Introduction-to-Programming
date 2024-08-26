#include <stdio.h>

int main(void){
	//Converts a temperature in degrees Celsius to degrees Fahrenheit
	float temp = 0;

	printf("Please enter a temperature in degrees Celsius: ");

	int validInput = scanf("%f", &temp);
	if (validInput < 1) {
    	printf("Invalid input\n");
    	return 0;
  	}

	float fahrenheit = (temp*9/5)+32;
	temp = temp;

	printf("%.2f degrees Celsius is %.0f degrees Fahrenheit.\n", temp, fahrenheit);
	return 0;
}