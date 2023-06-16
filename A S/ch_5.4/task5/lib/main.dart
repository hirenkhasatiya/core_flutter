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

  Color? cl;
  Icon? icon;

  @override
  void initState() {
    super.initState();
  }

  void increase() {
    setState(() {
      icon;
      cl;
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
                child: icon,
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
                               setState(() {
                                 cl=Colors.red;
                               });
                               },
                             child: Container(
                               height: 100,
                               width: 100,
                               margin: EdgeInsets.all(10),
                               decoration: BoxDecoration(
                                   color: Colors.red,
                                   borderRadius: BorderRadius.circular(10)
                               ),
                             ),
                           ),
                           GestureDetector(
                             onTap: () {
                               setState(() {
                                 cl=Colors.black;
                               });
                             },
                             child: Container(
                               height: 100,
                               width: 100,
                               margin: EdgeInsets.all(10),
                               decoration: BoxDecoration(
                                   color: Colors.black,
                                   borderRadius: BorderRadius.circular(10)
                               ),
                             ),
                           ),
                           GestureDetector(
                             onTap: () {
                               setState(() {
                                 cl=Colors.deepPurple;
                               });
                             },
                             child: Container(
                               height: 100,
                               width: 100,
                               margin: EdgeInsets.all(10),
                               decoration: BoxDecoration(
                                   color: Colors.deepPurple,
                                   borderRadius: BorderRadius.circular(10)
                               ),
                             ),
                           ),
                           GestureDetector(
                             onTap: () {
                               setState(() {
                                 cl=Colors.brown;
                               });
                             },
                             child: Container(
                               height: 100,
                               width: 100,
                               margin: EdgeInsets.all(10),
                               decoration: BoxDecoration(
                                   color: Colors.brown,
                                   borderRadius: BorderRadius.circular(10)
                               ),
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
                          setState(() {
                            icon=Icon(Icons.alarm,color: cl,size: 150,);
                          });
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
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              icon=Icon(Icons.call,color: cl,size: 150,);
                            });
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            child: Icon(Icons.call,size: 50),
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              icon=Icon(Icons.search,color: cl,size: 150,);
                            });
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            child: Icon(Icons.search,size: 50),
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              icon=Icon(Icons.arrow_forward_ios_rounded,color: cl,size: 150,);
                            });
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            child: Icon(Icons.arrow_forward_ios_rounded,size: 50),
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              icon=Icon(Icons.arrow_back_ios_rounded,color: cl,size: 150,);
                            });
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            child: Icon(Icons.arrow_back_ios_rounded,size: 50),
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              icon=Icon(Icons.circle_notifications,color: cl,size: 150,);
                            });
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            child: Icon(Icons.circle_notifications,size: 50),
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              icon=Icon(Icons.add,color: cl,size: 150,);
                            });
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            child: Icon(Icons.add,size: 50),
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                                borderRadius: BorderRadius.circular(10)
                            ),
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
