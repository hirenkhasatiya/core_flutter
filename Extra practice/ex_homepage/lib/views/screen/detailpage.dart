import 'package:ex_homepage/utils/color_utils.dart';
import 'package:ex_homepage/views/screen/cartpage.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {

  String title;
  int price;

  DetailPage({super.key, required this.title,required this.price});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: const Text("Detail page"),
        centerTitle: true,
        backgroundColor: myBg,
        foregroundColor: Colors.black,
      ),
      body: Center(
          child: Text("title : ${widget.title}\nprice : \$${widget.price}"),
      ),
      backgroundColor: myBg,

      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(255, 83,83, 1),
        onPressed: () {
          Route route = MaterialPageRoute(builder: (context) => cartpage());
          Navigator.of(context).push(route);
        },
        child: Icon(
          Icons.shopping_cart,
        ),
      ),
    );
  }
}