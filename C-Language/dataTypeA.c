/* A simple program to learn data types */
#include <stdio.h>
#include <stdlib.h>

int main()
{
    char characterName[] = "Luiz Fernando Michel";
    int characterAge = 58;

    printf("Hello, my name is %s.\n", characterName);
    printf("I have %d years old.\n", characterAge);

    characterAge = 35;
    printf("I really like the name %s.\n", characterName);
    printf("But did not like being %d years old.\n\n", characterAge);

    printf("    /|\n");
    printf("   / |\n");
    printf("  /  |\n");
    printf(" /___|\n");


    return 0;
}
