#include <stdio.h>
#include "FizzBuzz.h"

void c_fizzbuzz(unsigned int max) {
  int i;
  for (i = 1; i <= max; i++) {
    switch (i % 15) {
    case 0: printf("fizzbuzz\n"); break;
    case 3: case 6: case 9: case 12: printf("fizz\n"); break;
    case 5: case 10: printf("buzz\n"); break;
    default: printf("%d\n", i); break;
    };
  };
}
