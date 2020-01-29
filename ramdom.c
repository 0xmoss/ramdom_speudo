#include <time.h>
#include <stdlib.h>
#include <stdio.h>

int main(int ac, char **av)
{
    srand(time(NULL));
    char *nom = NULL;
    int i = 0;
    int number = 0;
    int taille= 0;

    if (ac != 2) {
        printf("pseudo_ramdom number_of_characters\n");
        return (0);
    }
    if (atoi(av[1]) <= 0) {
        printf("number above zero only\n");
        return (0);
    }
    taille = atoi(av[1]);
    nom = malloc(sizeof(char) * (taille + 1));
    for (; i < taille ; i++) {
        number = (rand() % 122);
            while ((number < 48 || number > 57) && (number < 65 || number > 90) && (number < 97 || number > 122))
                number = rand() % 122;
        nom[i] = number;
    }
    nom[i] = '\0';
    
    printf("%s\n", nom);
    free(nom);
    return (0);
}

