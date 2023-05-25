/*
  1. WAP to take a list using named parameter and return sum of all elements of list.
*/

import 'dart:io';

class addition {
  List<int>? l;
  int sum = 0;

  int sum_of_element({
    required int a,
    required int b,
    required int c,
  }) {
    print("a: $a");
    print("b: $b");
    print("c: $c");

    sum = a + b + c;
    return sum;
  }
}

void main() {
  addition a = addition();

  int sum = a.sum_of_element(a: 300, b: 20, c: 150);

  print("\n************************");
  print("\nSum : $sum");
}
