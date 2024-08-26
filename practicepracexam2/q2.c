#include <stdio.h>

int values_under_100(int* values, int size){
    int count = 0;

    for (int i = 0; i < size; i++){
        if (values[i] < 100){
            count++;
        }
    }


    return count;
}