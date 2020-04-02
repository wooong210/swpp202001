#include<stdio.h>

int main() {
  printf("Type two (small, large) integers to calculate average: ");
  int a, b;
  scanf("%d %d", &a, &b);

  int average = (a + b) / 2;
  printf("Average: %d\n", average);

  return 0;
}
