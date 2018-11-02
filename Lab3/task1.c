#include <stdio.h>
#include <stdlib.h>
int main ()
{
    FILE* file = fopen("input.txt", "r"); // read file
    while (1){
        if (file != NULL){
            break; // file exists so break
        } else {
            printf("File does not exist!\n"); // File not found if NULL
            perror("FileNotFound");
            exit(1); //so exit
        }
    }

    FILE* newFile = fopen("Heaven.txt", "w"); // create new file to write

    char line[512];
    char eLine[512]; //edited line

    while (fgets(line, sizeof(line), file)) {
        printf("%s", line);
        for (int i = 0 ; i<sizeof(line) ; i++){ //iterate by character
            if (line[i] == 'a'){eLine[i] = 'b';} //if the char is 'a' change to 'b'
            else{eLine[i]=line[i];} // else copy char
        }
        fprintf(newFile, "%s", eLine); // print new line to new file "heaven.txt"
    }
    fclose(file);
    fclose(newFile);
    //close files
    return -0; //returning nega zero because we are sad
}