import 'package:flutter/material.dart';
import 'package:travelling_app/utils/colorutils.dart';

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
        backgroundColor: MyBg,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: Text("title : ${widget.title}\n}"),
      ),
      backgroundColor: MyBg,
    );
  }
}