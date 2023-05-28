#include <stdio.h>

int main() {
  FILE* f = fopen("out.txt", "w");
  for (int i=1; i<=100; i++) {
    if (i % 3 == 0 && i % 5 == 0) fprintf(f, "FizzBuzz\n");
    else if (i % 3 == 0) fprintf(f, "Fizz\n");
    else if (i % 5 == 0) fprintf(f, "Buzz\n");
    else fprintf(f, "%d\n", i);
  }
  fclose(f);
}
