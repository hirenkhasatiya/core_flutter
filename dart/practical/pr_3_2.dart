/*
2. WAP to simulate Super Market Billing system in which...
Create multiple customers through array of object.
When each customer is entered (instantiated) note their cust_id, cust_name, cust_contact
Create a menu driven system which gives the customer verities of categories and their products.
Whenever user selects any product simulate the feature to add product in cust_cart which will contain 4 parameters for each product pro_id, pro_name, pro_qty, pro_price.
Apply billing and discount criteria's on the final amount after calculating each customer's number of product's price.
                                 10% disc. on 500 - 1500
                                 20% disc. on 1500 - 3500
                                 25% disc. on 3500 - 6500
                                 30% disc. for above all.
add searching functionalities by cust_id which gives cust_id, cust_name, cust_contact, list of products, their price ang quantity and include final amount and discount amount.

*/

import 'dart:io';
import 'pr_3.dart';

void main() {
  stdout.write("How Many Customer = ");
  int n = int.parse(stdin.readLineSync()!);

  List<Customer> a = List.generate(n, (index) {
    stdout.write("Enter Customer id = ");
    int id = int.parse(stdin.readLineSync()!);

    stdout.write('Enter Customer Name = ');
    String name = stdin.readLineSync()!;

    stdout.write("Enter Customer Contact = ");
    int contact = int.parse(stdin.readLineSync()!);

    return Customer(cust_id: id, cust_name: name, cust_contact: contact);
  });
}
