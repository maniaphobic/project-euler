#include <math.h>
#include <stdio.h>
#include <stdlib.h>

#define FALSE 0
#define TRUE 1

long *factor(long n) {
  long *factors = (long *) NULL;
  int factor_count = 0;
  long half_n = n/2;
  long p;

  if (n%2 == 0) {
    factors = (long *) realloc(factors, (factor_count+1) * sizeof(long));
    factors[factor_count++] = 2;
  }

  p = 3;
  while (TRUE) {
    /*
    printf("%ld\n", p);
    */
    if (p >= half_n)
      break;
    if (n%p == 0 && is_prime(p)) {
      factors = (long *) realloc(factors, (factor_count+1) * sizeof(long));
      factors[factor_count++] = p;
      printf("%ld\n", p);
    }
    p += 2;
  }

  return factors;
}

int is_prime(long n) {
  double n_sqrt = sqrt((double) n);
  int k = 1;
  if (n==2 || n==3 || n==5 || n==7)
    return TRUE;
  if (n%2 == 0 || n%3==0)
    return FALSE;
  while (TRUE) {
    int k6 = 6*k;
    int k6_m1 = k6-1;
    int k6_p1 = k6_m1-2;
    if (n%k6_m1 == 0 || n%k6_p1 == 0)
      return FALSE;
    if (k6_p1 > n_sqrt)
      break;
    k++;
  }
  return TRUE;
}

int main(int argc, char **argv[]) {
  long composite = atol((char *) argv[1]);
  long *factors = factor(composite);
  printf("%ld is %s\n", composite, is_prime(composite) ? "prime" : "composite");
  exit(0);
}
