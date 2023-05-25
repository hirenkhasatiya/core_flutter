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

class Customer {
  int? cust_id;
  String? cust_name;
  int? cust_contact;
  double bill = 0;
  double discount = 0;

  List<Product> Cart = [];

  Customer(
      {required this.cust_id,
      required this.cust_name,
      required this.cust_contact}) {
    int? choice;

    do {
      print("***********************************");

      print("\tPress 1 For add product");
      print("\tPress 2 For Remove product");
      print("\tPress 3 For Display Cart List");
      print("\tpress 4 for bill");
      print("\tPress 0 For Exit");

      print("***********************************");

      stdout.write("Enter Your Choice = ");
      choice = int.parse(stdin.readLineSync()!);

      switch (choice) {
        case 1:
          print("***********************************");
          print("\t\tMenu");
          print("***********************************");
          Product.prod.forEach((element) {
            print(
                "${Product.prod.indexOf(element) + 1}) ${element["pro_name"]} :\t₹ ${element["pro_price"]}");
          });

          stdout.write("Enter Choice = ");
          int n = int.parse(stdin.readLineSync()!);

          Product p = Product.formMap(data: Product.prod[n - 1]);

          Cart.add(p);
          bill += p.pro_price;
          break;

        case 2:
          Product.prod.forEach((element) {
            print(
                "${Product.prod.indexOf(element) + 1} ${element["pro_name"]} : ₹ ${element["pro_price"]}");
          });

          stdout.write("Enter Your Choice = ");
          int n = int.parse(stdin.readLineSync()!);

          Product q = Product.formMap(data: Product.prod[n - 1]);

          Cart.remove(q);

          break;

        case 3:
          Cart.forEach((element) {
            print("${element.pro_name} ${element.pro_price}");
          });
          break;

        case 4:
          print("***********************************");
          print("\t\t BILL ");
          print("***********************************");

          Cart.forEach((element) {
            print("${element.pro_name}   ₹ ${element.pro_price}");
          });

          print("***********************************");
          if (bill >= 500 && bill <= 1500) {
            discount = bill * 10 / 100;
            bill = bill - discount;
            print("\tTotal Bill :  ₹${bill}");
          }
          if (bill > 1500 && bill <= 3500) {
            discount = bill * 20 / 100;
            bill = bill - discount;
            print("\tTotal Bill :  ₹${bill}");
          }
          if (bill > 3500 && bill <= 6500) {
            discount = bill * 25 / 100;
            bill = bill - discount;
            print("\tTotal Bill :  ₹${bill}");
          }
          if (bill > 6500) {
            discount = bill * 30 / 100;
            bill = bill - discount;
            print("\tTotal Bill :  ₹${bill}");
          }
          break;

        case 0:
          break;
      }
    } while (choice != 0);
  }
}

class Product {
  int pro_id;
  String pro_name;
  int pro_price;

  Product(
      {required this.pro_id, required this.pro_name, required this.pro_price});

  factory Product.formMap({required Map data}) {
    return Product(
        pro_id: data["pro_id"],
        pro_name: data["pro_name"],
        pro_price: data["pro_price"]);
  }

  static List<Map> prod = [
    {"pro_id": 1, "pro_name": "braclet", "pro_price": 350},
    {"pro_id": 2, "pro_name": "ring", "pro_price": 400},
    {"pro_id": 3, "pro_name": "t-sirt", "pro_price": 2000},
    {"pro_id": 4, "pro_name": "sirt", "pro_price": 2400},
    {"pro_id": 5, "pro_name": "shoes", "pro_price": 1800},
    {"pro_id": 6, "pro_name": "watch", "pro_price": 5000},
  ];
}
