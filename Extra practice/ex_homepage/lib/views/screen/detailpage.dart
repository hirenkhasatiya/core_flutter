import 'package:ex_homepage/utils/color_utils.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

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
    );
  }
}