//Angel Becerra 

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define NUMBER 5

int main(int argc,char* argv[]){
    printf("hello world");
    printf(":)");
    printf("%d) option %s",1,"one");

    // strically typed 

    for (int x = 0;  x < NUMBER; x++);
    {

    }
    // do something
    int whole_number = 6;
    int* whole_numberpointer = &whole_number;

    *whole_numberpointer = 46;
    printf("\n%d",whole_number);
    printf("\n%d",*whole_numberpointer);
    printf("\n%p",whole_numberpointer);

    whole_numberpointer += 1;

    printf("\n%p",whole_numberpointer);

    int* int_pointer = 
    (int*)malloc(sizeof(int));
    printf("\n%d",*int_pointer);

    double* double_int_pointer = 
    (double*)malloc(sizeof(double));
    *double_int_pointer = 102.45;
    printf("\n%f",*double_int_pointer);

    int* bad_pointer = (int*) 4;

    printf("\n%d",*bad_pointer);

    char phrase[40];

    int* int_array = calloc(4, sizeof(int));

    *(int_array + 3)=56;
    
    return 0; // no errors



}