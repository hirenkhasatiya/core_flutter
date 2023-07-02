import 'package:ex_homepage/main.dart';
import 'package:ex_homepage/utils/color_utils.dart';
import 'package:flutter/material.dart';

class cartpage extends StatefulWidget {
  const cartpage({Key? key}) : super(key: key);

  @override
  State<cartpage> createState() => _cartpageState();
}

class _cartpageState extends State<cartpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: GestureDetector(
              onTap: (){
              },
              child: Icon(
                Icons.home,
                color: Colors.black,
              ),
            ),
          )
        ],
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(Icons.arrow_back_ios_new_rounded,color: Colors.black),
        ),
        backgroundColor: myBg,
        title: const Text(
          "Cart Page",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}


