import 'dart:io';

void main() {
  List n1 = List.generate(5, (index) => index + 1);

  List n2 = List.generate(5, (index) => index + 3);

  Set s = n1.toSet();

  Set a = n2.toSet();

  print(s.toList());

  print(a.toList());
}
