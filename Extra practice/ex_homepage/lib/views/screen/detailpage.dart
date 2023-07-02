import 'package:ex_homepage/utils/color_utils.dart';
import 'package:ex_homepage/views/screen/cartpage.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {

  String title;
  int price;
  int stock;

  DetailPage({super.key, required this.title,required this.price, required this.stock});

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
          child: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: const Text("Detail page"),
        centerTitle: true,
        backgroundColor: myBg,
        foregroundColor: Colors.black,
      ),
      body: Center(
          child: Text("title : ${widget.title}\nprice : \$${widget.price}\nstock : ${widget.stock}"),
      ),
      backgroundColor: myBg,

      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(255, 83,83, 1),
        onPressed: () {
          Route route = MaterialPageRoute(builder: (context) => const cartpage());
          Navigator.of(context).push(route);
        },
        child: const Icon(
          Icons.shopping_cart,
        ),
      ),
    );
  }
}