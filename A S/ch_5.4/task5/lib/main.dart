import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int a=0;
  Color? color;

  @override
  void initState() {
    super.initState();
  }

  void increase() {
    setState(() {
      color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Icon Editor"),
        centerTitle: true,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 250,
                width: 390,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Align(
                  child: Text(
                    "hello",
                    style: TextStyle(
                      color: color,
                      fontSize: 100,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: 390,
              height: 50,
              margin: EdgeInsets.all(10),
              child: Align(
                child: Text(
                  "Select Color",
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
              ),
              decoration: BoxDecoration(
              color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
            ),
            Column(
              children: [
                 Container(
                   height: 150,
                   width: 380,
                   margin: EdgeInsets.all(10),
                   decoration: BoxDecoration(
                   color: Colors.black12,
                     borderRadius: BorderRadius.circular(10)
                   ),
                   child: SingleChildScrollView(
                     scrollDirection: Axis.horizontal,
                       physics: BouncingScrollPhysics(),
                       child: Row(
                         children: [
                           GestureDetector(
                             onTap: (){
                               a=1;
                               if(a==1)
                                 {
                                   color=Colors.red;
                                 }
                               },
                             child: Container(
                               height: 100,
                               width: 100,
                               margin: EdgeInsets.all(10),
                               decoration: BoxDecoration(
                                   color: color=Colors.red,
                                   borderRadius: BorderRadius.circular(10)
                               ),
                             ),
                           ),
                           GestureDetector(
                             onTap: () {
                               a=2;
                               if(a==2)
                                 {
                                   color = Colors.black;
                                 }
                             },
                             child: Container(
                               height: 100,
                               width: 100,
                               margin: EdgeInsets.all(10),
                               decoration: BoxDecoration(
                                   color: color = Colors.black,
                                   borderRadius: BorderRadius.circular(10)
                               ),
                             ),
                           ),
                           GestureDetector(
                             onTap: () {

                             },
                             child: Container(
                               height: 100,
                               width: 100,
                               margin: EdgeInsets.all(10),
                               decoration: BoxDecoration(
                                   color: color = Colors.green,
                                   borderRadius: BorderRadius.circular(10)
                               ),
                             ),
                           ),
                           Container(
                             height: 100,
                             width: 100,
                             margin: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                                 color: Colors.yellow,
                                 borderRadius: BorderRadius.circular(10)
                             ),
                           ),
                         ],
                       ),
                     ),
                 ),
                Container(
                  width: 390,
                  height: 50,
                  margin: EdgeInsets.all(10),
                  child: Align(
                    child: Text(
                      "Select Icon",
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
                Container(
                  height: 150,
                  width: 380,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                  color: Colors.black12,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Row(
                      children: [
                      GestureDetector(
                        onTap: () {

                        },
                          child: Container(
                            height: 100,
                            width: 100,
                            child: Icon(Icons.alarm,size: 50),
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                      ),
                        Container(
                          height: 100,
                          width: 100,
                          child: Icon(Icons.call,size: 50),
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                        ),Container(
                          height: 100,
                          width: 100,
                          child: Icon(Icons.search,size: 50),
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child: Icon(Icons.navigate_next,size: 50),
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child: Icon(Icons.arrow_back_ios_rounded,size: 50),
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child: Icon(Icons.circle_notifications,size: 50),
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child: Icon(Icons.add,size: 50),
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
      ),backgroundColor: Colors.grey.shade300,
    );
  }
}
