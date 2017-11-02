#include <stdlib.h>
#include <time.h>
#include <math.h>
#include <stdio.h>

int main(void) {

    FILE *fp = fopen("out.txt","w+");
    if (fp == NULL)
    {
        printf("Error opening file!\n");
        exit(1);
    }
    fprintf(fp,"Hello, World!\n");
    fclose(fp);

	return EXIT_SUCCESS;
}

