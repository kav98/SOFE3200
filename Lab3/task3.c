#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>

void replaceAll(char *stringToReplace, const char *wordToReplace, const char *replaceWith) {
    char t[1024], * p;
    int i = 0;
    while ((p = strstr(stringToReplace, wordToReplace)) != NULL) {
        strcpy(t, stringToReplace);
        i = p - stringToReplace;
        stringToReplace[i] = '\0';
        strcat(stringToReplace, replaceWith);
        strcat(stringToReplace, t + i + strlen(wordToReplace));
    }
}


void main()
{

    char parentBuff[1024];
    char childBuff[1024];
    int fd[2], file, bytes, eFile;

    pipe(fd);

    if(fork()) {
    //Parent closes write
    close(fd[0]);
    file = open("AliceInWonderland.txt", O_RDONLY);
    bytes = read(file, parentBuff, sizeof(parentBuff));

    // Puts data in pipe
    write(fd[1], parentBuff, bytes);
    } else {
    // Child closes read
    close(fd[1]);

    read(fd[0], childBuff, sizeof(childBuff)); //reads from pipe
    close(fd[0]);

    replaceAll(childBuff, "Inferno", "Paradisio");
    replaceAll(childBuff, "In dark woods", "using Windows 8.1");
    replaceAll(childBuff, "those woods", "Windows 8.1");
    replaceAll(childBuff, "to enter", "to use 8.1");
    replaceAll(childBuff, "crest", "screen");
    replaceAll(childBuff, "Below a hill", "Before a monitor");
    replaceAll(childBuff, "shoulders", "GUI");
    replaceAll(childBuff, "planet", "UNIX");
    replaceAll(childBuff, "dante", "Shakespeare");

    printf("%s", childBuff);
    eFile = open("Dante.txt", O_CREAT | O_WRONLY | O_TRUNC, 0666);
    write(eFile, childBuff, strlen(childBuff)-1);
    }
}
