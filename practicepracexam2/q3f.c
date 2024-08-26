#include <stdio.h>
#include <stdlib.h>

int values_under_100(int* values, int size, int** address){
    int count = 0;

    for (int i = 0; i < size; i++){
        if (values[i] < 100){
            count++;
        }
    }

    int under100Index = 0;
    int* numsUnder100 = malloc(sizeof(int) * count);

    for (int i = 0; i < size; i++){
        if (values[i] < 100){
            numsUnder100[under100Index] = values[i];
            under100Index++;
        }
    }

    *address = numsUnder100;


    return count;
}