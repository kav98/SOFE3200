#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>

void main()
{

    char parentBuff[1024];
    char childBuff[1024];
    int fd[2], file, bytes, eFile;

    pipe(fd);

    if(fork()) {
    //Parent closes write
    close(fd[0]);
    file = open("input.txt", O_RDONLY);
    bytes = read(file, parentBuff, sizeof(parentBuff));

    // Puts data in pipe
    write(fd[1], parentBuff, bytes);
    } else {
    // Child closes read
    close(fd[1]);

    read(fd[0], childBuff, sizeof(childBuff)); //reads from pipe
    close(fd[0]);

    printf("%s", childBuff);
    eFile = open("Dante.txt", O_CREAT | O_WRONLY | O_TRUNC, 0666);
    write(eFile, childBuff, strlen(childBuff)-1);
    }
}