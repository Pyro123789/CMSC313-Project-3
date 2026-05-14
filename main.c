#include <stdio.h>

int isPrintable(unsigned char x) {
    // Takes an ascii char and outputs if it is printable
    // Note that the chars 32-126 are printable in ascii
    if ((unsigned int)x >= 32 && (unsigned int)x <= 126) {
        return 1;
    }
    return 0;
}

int main() {
    unsigned int linesRead = 0;
    #define bufferSize 17*sizeof(char) // buffer size = 16 (including \0)
    unsigned char buffer[bufferSize];

    // Read continuously from stdin
    while (fgets(buffer, sizeof(buffer), stdin) != NULL) {
        linesRead++;
        printf("%08X", linesRead*16); // Print line number in hex
        printf(" ~ ");
        // Print the hex values
        for (int i = 0; i < bufferSize-1; i++) {
                printf(" %02X", buffer[i]);
        }
      
        // Print the printable chars in the buffer:
        // Note: printable chars in ascii range from (in decimal) 32-126.
        printf(" |");
        for (int i = 0; i < bufferSize-1; i++) {
            if (isPrintable(buffer[i])) {
                printf("%c", buffer[i]);
            }
            else {
                printf("%c", '.');
            }
        }
        printf("|\n");
    }
    return 0;
}
