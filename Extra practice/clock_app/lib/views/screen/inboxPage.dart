import 'dart:math';

import 'package:flutter/material.dart';
import 'package:clock_app/views/screen/HomePage.dart';
import 'package:clock_app/Utils/routsutils.dart';

class InboxPage extends StatefulWidget {
  const InboxPage({Key? key}) : super(key: key);

  @override
  State<InboxPage> createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage>{
  
  int sec =0;
  int min =0;
  int hour =0;
  
  startTime(){
    Future.delayed(Duration(seconds: 1),
        (){
      setState(() {
        sec++;
        if(sec>59)
          {
            sec=0;
            min++;
          }
        if(min>59)
          {
            min=0;
            hour++;
          }
      });
      debugPrint("second : $sec");
      startTime();
    }
        );
  }
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(Icons.arrow_back_ios_new_rounded,color: Colors.white,),
        ),
        title: const Text("clock",style: TextStyle(
          color: Colors.white
        )),
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: h*0.4,
              width: w*0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(250),
                border: Border.all(color: Colors.black,
                width: 3,
                ),
                image: DecorationImage(image: NetworkImage(
                  "https://i.pinimg.com/736x/f9/36/c5/f936c5a35c35c3f4d7c498fb8edad0f1--hand-clock-art-online.jpg"
                ),fit: BoxFit.cover,
                ),
              ),
            ),
            Transform.rotate(
              angle: pi/2,
              child: Transform.rotate(
                angle: sec*(pi*2)/60,
                child: Divider(
                  color: Colors.black,
                  thickness: 1,
                  indent: 65,
                  endIndent: w/2,
                ),
              ),
            ),
            Transform.rotate(
              angle: pi/2,
              child: Transform.rotate(
                angle: min*(pi*2)/60,
                child: Divider(
                  color: Colors.black,
                  thickness: 2,
                  indent: 80,
                  endIndent: w/2,
                ),
              ),
            ),
            Transform.rotate(
                angle: pi/2,
              child: Transform.rotate(
                  angle: hour*(pi/2)/60,
                child: Divider(
                  color: Colors.black,
                  thickness: 3,
                  indent: 95,
                  endIndent: w/2,
                ),
              ),
            ),
            CircleAvatar(
              radius: 10,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            startTime();
          });
        },
        child: Icon(
          Icons.timer,
        ),
      ),
    );
  }
}
