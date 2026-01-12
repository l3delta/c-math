#include <stdio.h>

typedef struct {
    double x, y;
} Ponto;

int main(void) {
    
    Ponto A = {5.0, 3.0};
    printf("Coordenadas do ponto A = (%.1f, %.1f).\n", A.x, A.y);

    return 0;
}
