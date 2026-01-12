#include <stdio.h>
#include <math.h>

typedef struct {
    double x, y;
} Ponto;

double distancia(Ponto A, Ponto B) {
    return hypot(A.x - B.x, A.y - B.y);
}

int main(void) {
    
    Ponto A = {2.0, 3.0};
    Ponto B = {6.0, 6.0};
    double d = distancia(A, B);
    printf("Ditância entre A e B: %.1f.\n", d);

    return 0;
}
