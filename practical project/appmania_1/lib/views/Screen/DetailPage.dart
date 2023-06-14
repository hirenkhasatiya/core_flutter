import 'package:appmania_1/utils/ColorUtils.dart';
import 'package:appmania_1/views/component/MyBackBotton.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    //catch
    Map data = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyBg,
        elevation: 0,
        leading: MyBackButton(),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
              color: Colors.grey,
                shape: BoxShape.circle
              ),
              child: Icon(
                  Icons.shopping_cart_rounded,
                  color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
