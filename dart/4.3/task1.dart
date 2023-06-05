/*Writ a Dart Program to gt an print total thr
mplo!s information using usr input an
Map atat!p(us MapEntr! class)

Take low mention attributs for on
mplo!
id
name
ag
salar!*/

import 'dart:io';

void main() {
  stdout.write("Enter number of students : ");
  int n = int.parse(stdin.readLineSync()!);

  List<Map<String, dynamic>> alldata = List.generate(n, (index) {
    print("student: ${index + 1}/$n");

    stdout.write("Enter id\t : ");
    int id = int.parse(stdin.readLineSync()!);

    stdout.write("Enter name\t: ");
    String name = stdin.readLineSync()!;

    stdout.write("Enter age\t : ");
    int age = int.parse(stdin.readLineSync()!);

    stdout.write("Enter salary\t : ");
    int salary = int.parse(stdin.readLineSync()!);

    return {'id': id, 'name': name, 'age': age, 'salary': salary};
  });

  alldata.forEach((element) {
    element.forEach((key, value) {
      stdout.write("$value\t");
    });
    print("");
  });
}
