import 'package:flutter/material.dart';

void main(){

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("🛍️ List of Fruits"),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        body: Center(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "🍎 Apple",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4,
                  ),
                ),
                TextSpan(
                  text: "\n\n🍇 Greps",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4,
                  ),
                ),
                TextSpan(
                  text: "\n\n🍒 Cherry",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4,

                  ),
                ),
                TextSpan(
                  text: "\n\n🍓 Stawberry",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.pink,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4,
                  ),
                ),
                TextSpan(
                  text: "\n\n🥭 Mango",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.amber,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4,
                  ),
                ),
                TextSpan(
                  text: "\n\n🍍 Pineapple",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.green.shade700,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4,
                  ),
                ),
                TextSpan(
                  text: "\n\n🍋 Lemon",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.lime,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4,
                  ),
                ),
                TextSpan(
                  text: "\n\n🍉 Watermelon",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.lightGreen,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4,
                  ),
                ),
                TextSpan(
                  text: "\n\n🥥 Coconut",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4,
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.white,
      ),
    ),
  );
}
