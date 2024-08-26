#include <stdio.h>

int main(void){
	//Takes the user's name, age and employment fraction and prints it back out
	char firstName[11];
	char lastName[11];
	int age;
	float fraction;

	printf("Pleas enter your name, age and employment fraction: ");
	scanf("%10s %10s %u %3f", firstName, lastName, &age, &fraction);

	printf("Your name is %s %s, you are %d years old and your employment fraction is %.1f.\n", firstName, lastName, age, fraction);

	return 0;
}