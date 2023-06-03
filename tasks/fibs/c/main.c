#include <stdio.h>
#include <gmp.h>

typedef long unsigned int u64;

int main() {
  FILE* f = fopen("out.txt", "w");
  mpz_t a, b, c;
  mpz_init(a);
  mpz_init(b);
  mpz_init(c);
  mpz_set_ui(a, 0);
  mpz_set_ui(b, 1);
  gmp_fprintf(f, "%Zu\n%Zu\n", a, b);
  for (int i=2; i<100; i++) {
    mpz_set_ui(c, 0);
    mpz_add(c, a, b);
    mpz_set(a, b);
    mpz_set(b, c);
    gmp_fprintf(f, "%Zu\n", c);
  }
  fclose(f);
}
