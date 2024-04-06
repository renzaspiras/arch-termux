#include <stdio.h>
#include <stdlib.h>  // for system()

int main(int argc, char *argv[]) {
    // Check if there are command-line arguments
    if (argc > 1) {
        // Check if the argument is "update"
        if (strcmp(argv[1], "update") == 0) {
            printf("Executing update command...\n");
            // Execute the system command named "update"
            system("update");
        } else {
            printf("Invalid argument\n");
        }
    } else {
        printf("No argument provided\n");
    }
    
    return 0;
}
