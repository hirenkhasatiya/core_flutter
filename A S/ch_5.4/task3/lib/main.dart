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


  @override
  void initState() {
    super.initState();
  }

  void increase() {
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Icons"),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
      ),
      body: Padding(
        padding: EdgeInsets.all(0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      child: Icon(
                        Icons.add,
                        size: 55,
                      ),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Colors.grey.shade400,
                          ),
                        ],
                      ),
                    ),
                    SizedBox.fromSize(size: Size(5, 5)),
                    Container(
                      height: 150,
                      width: 150,
                      child: Icon(
                        Icons.account_balance_sharp,
                        size: 55,
                      ),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Colors.grey.shade400,
                          ),
                        ],
                      ),
                    ),Container(
                      height: 150,
                      width: 150,
                      child: Icon(
                        Icons.backspace,
                        size: 55,
                      ),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Colors.grey.shade400,
                          ),
                        ],
                      ),
                    ),Container(
                      height: 150,
                      width: 150,
                      child: Icon(
                        Icons.backup_outlined,
                        size: 55,
                      ),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Colors.grey.shade400,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),SizedBox.fromSize(size: Size(5, 5)),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      child: Icon(
                        Icons.account_circle_outlined,
                        size: 55,
                      ),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Colors.grey.shade400,
                          ),
                        ],
                      ),
                    ),
                    SizedBox.fromSize(size: Size(5, 5)),
                    Container(
                      height: 150,
                      width: 150,
                      child: Icon(
                        Icons.account_balance_wallet_sharp,
                        size: 55,
                      ),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Colors.grey.shade400,
                          ),
                        ],
                      ),
                    ),
                    SizedBox.fromSize(size: Size(5, 5)),
                    Container(
                      height: 150,
                      width: 150,
                      child: Icon(
                        Icons.add_card_rounded,
                        size: 55,
                      ),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Colors.grey.shade400,
                          ),
                        ],
                      ),
                    ),
                    SizedBox.fromSize(size: Size(5, 5)),
                    Container(
                      height: 150,
                      width: 150,
                      child: Icon(
                        Icons.add_a_photo_outlined,
                        size: 55,
                      ),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Colors.grey.shade400,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),SizedBox.fromSize(size: Size(5, 5)),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      child: Icon(
                        Icons.pages_outlined,
                        size: 55,
                      ),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Colors.grey.shade400,
                          ),
                        ],
                      ),
                    ),
                    SizedBox.fromSize(size: Size(5, 5)),
                    Container(
                      height: 150,
                      width: 150,
                      child: Icon(
                        Icons.ac_unit,
                        size: 55,
                      ),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Colors.grey.shade400,
                          ),
                        ],
                      ),
                    ),
                    SizedBox.fromSize(size: Size(5, 5)),
                    Container(
                      height: 150,
                      width: 150,
                      child: Icon(
                        Icons.account_tree_outlined,
                        size: 55,
                      ),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Colors.grey.shade400,
                          ),
                        ],
                      ),
                    ),
                    SizedBox.fromSize(size: Size(5, 5)),
                    Container(
                      height: 150,
                      width: 150,
                      child: Icon(
                        Icons.account_box_rounded,
                        size: 55,
                      ),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Colors.grey.shade400,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),SizedBox.fromSize(size: Size(5, 5)),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      child: Icon(
                        Icons.add_chart_outlined,
                        size: 55,
                      ),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Colors.grey.shade400,
                          ),
                        ],
                      ),
                    ),
                    SizedBox.fromSize(size: Size(5, 5)),
                    Container(
                      height: 150,
                      width: 150,
                      child: Icon(
                        Icons.manage_accounts,
                        size: 55,
                      ),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Colors.grey.shade400,
                          ),
                        ],
                      ),
                    ),
                    SizedBox.fromSize(size: Size(5, 5)),
                    Container(
                      height: 150,
                      width: 150,
                      child: Icon(
                        Icons.baby_changing_station_outlined,
                        size: 55,
                      ),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Colors.grey.shade400,
                          ),
                        ],
                      ),
                    ),
                    SizedBox.fromSize(size: Size(5, 5)),
                    Container(
                      height: 150,
                      width: 150,
                      child: Icon(
                        Icons.add_circle,
                        size: 55,
                      ),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Colors.grey.shade400,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),SizedBox.fromSize(size: Size(5, 5)),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      child: Icon(
                        Icons.h_plus_mobiledata,
                        size: 55,
                      ),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Colors.grey.shade400,
                          ),
                        ],
                      ),
                    ),
                    SizedBox.fromSize(size: Size(5, 5)),
                    Container(
                      height: 150,
                      width: 150,
                      child: Icon(
                        Icons.kayaking_sharp,
                        size: 55,
                      ),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Colors.grey.shade400,
                          ),
                        ],
                      ),
                    ),
                    SizedBox.fromSize(size: Size(5, 5)),
                    Container(
                      height: 150,
                      width: 150,
                      child: Icon(
                        Icons.snapchat,
                        size: 55,
                      ),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Colors.grey.shade400,
                          ),
                        ],
                      ),
                    ),
                    SizedBox.fromSize(size: Size(5, 5)),
                    Container(
                      height: 150,
                      width: 150,
                      child: Icon(
                        Icons.install_desktop,
                        size: 55,
                      ),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Colors.grey.shade400,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}