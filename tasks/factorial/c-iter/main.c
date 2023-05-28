#include <stdio.h>

int main() {
  FILE* f = fopen("out.txt", "w");
  for (int i=0; i<=10; i++) {
    int s = 1;
    for (int j=2; j<=i; j++) {
      s *= j;
    }
    fprintf(f, "%d\n", s);
  }
  fclose(f);
}
