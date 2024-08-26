#include <stdio.h>
#include <stdlib.h>

int main(void) {
    printf("Please input the number of values you will enter: ");
    int size = 0;
    scanf("%d", &size);

    int* values = malloc(sizeof(int) * size);

    for (int i = 0; i < size; i++){
        printf("Enter number %d: ", i + 1);
        scanf("%d", &values[i]);
    }

    // call the function
    // int * under_100_array;
    // int count = values_under_100(values, size, &under_100_array);
    
    // printf("There are %d values under 100\n", count);
    // printf("The values less than 100 were: ");
    // for (int i = 0; i < count; i++){
    //     if (i == count - 1){
    //         printf("%d\n", under_100_array[i]);
    //     } else {
    //         printf("%d, ", under_100_array[i]);
    //     }
    // }

    for (int i = 0; i < size; i++){
        if (i == size - 1){
            printf("%d", values[i]);
        } else {
            printf("%d ", values[i]);
        }
    }

    printf("\n");


    return 0;
}