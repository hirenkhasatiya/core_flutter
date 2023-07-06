import 'dart:math';
import 'package:flutter/material.dart';
import 'package:pr_5_timer/Utils/image_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

//analog timer
  int sec =0;
  int min =0;
  int hour =0;
//reverce timer
  int sec1 =0;
  int min1 =0;
  int hour1 =0;

  int live_sec =0;
  int live_min =0;
  int live_hour =0;

  bool timer = false;
  bool straps = false;
  bool analog = false;
  bool digital = false;
  bool reverce = false;

  bool isrunning = false;

  List<dynamic> FlagList=[];
  List<dynamic> FlagList1=[];

  startTime(){
    if(isrunning){
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
  }

  revercetime(){
    if(isrunning)
      {
        Future.delayed(Duration(seconds: 1),
                (){
              setState(() {
                sec1--;
                if(sec1<1)
                {
                  sec1=60;
                  min1--;
                }
                if(min1<1)
                {
                  min1=60;
                  hour1--;
                }
              });
              debugPrint("second : $sec1");
              revercetime();
            }
        );
      }
  }

  StartLiveTime()
  {
    Future.delayed(
        const Duration(seconds: 1),
            (){
          setState(() {
            live_sec = DateTime.now().second;
            live_min = DateTime.now().minute;
            live_hour = DateTime.now().hour%12;
          });
          StartLiveTime();
        }
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    StartLiveTime();
  }

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Clock App"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.primaries[17],
              ),
              currentAccountPicture: CircleAvatar(
                foregroundImage: AssetImage(f2),
              ),
              accountName: Text("3198_HIREN_KHASATIYA"),
              accountEmail: Text("khasatiyahiren43@gmail.com"),
            ),
            ListTile(
              onTap: (){},
              title: Text("All Inbox"),
              leading: Icon(Icons.message),
            ),
            new Divider(
              thickness: 2,
              indent: 10,
            ),
            ListTile(
              title: Text("Gmail"),
              leading: Icon(Icons.mail_lock_rounded),
            ),
            ListTile(
              title: Text("Facebook"),
              leading: Icon(Icons.facebook),
            ),
            new Divider(
              thickness: 2,
              indent: 10,
            ),
            ListTile(
              title: Text("Analog Timer"),
              trailing: Switch(
                value: timer,
                onChanged: (val) {
                  setState(() {
                    straps=false;
                    analog=false;
                    digital=false;
                    reverce=false;
                    timer = val;
                  });
                },
              ),
            ),
            ListTile(
              title: Text("reverce Timer"),
              trailing: Switch(
                value: reverce,
                onChanged: (val) {
                  setState(() {
                    straps=false;
                    analog=false;
                    digital=false;
                    timer=false;
                    reverce = val;
                  });
                },
              ),
            ),
            ListTile(
              title: Text("Straps"),
              trailing: Switch(
                value: straps,
                onChanged: (val) {
                  setState(() {
                    timer=false;
                    reverce=false;
                    straps = val;
                  });
                },
              ),
            ),
            ListTile(
              title: Text("Analog Live"),
              trailing: Switch(
                value: analog,
                onChanged: (val) {
                  setState(() {
                    reverce=false;
                    timer=false;
                    analog = val;
                  });
                },
              ),
            ),
            ListTile(
              title: Text("Digital"),
              trailing: Switch(
                value: digital,
                onChanged: (val) {
                  setState(() {
                    analog=false;
                    timer=false;
                    reverce=false;
                    digital = val;
                  });
                },
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            //digital watch
            Visibility(
              visible: digital,
              child: Container(
                height: 20,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.green,
                      blurRadius: 5,
                    )
                  ]
                ),
                child: Center(
                  child: Text(
                      "${live_hour%12}: ${live_min} : $live_sec",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ),
            //analog watch
            Visibility(
              visible:analog,
              child: Stack(
                children: List.generate(60, (index) => Transform.rotate(
                  angle: ((index)*(pi*2))/60,
                  child: Divider(
                    thickness: (index%5==0) ? 5 : 5,
                    color: (index%5==0) ? Colors.black : Colors.red,
                    endIndent: (index%5==0) ? w*0.82 : w*0.85,
                    indent: 45,
                  ),
                ),
                ),
              ),
            ),
            Visibility(
              visible: analog,
              child: Transform.rotate(
                angle: pi/2,
                child: Transform.rotate(
                  angle: live_sec*(pi*2)/60,
                  child: Divider(
                    color: (live_sec%5==0) ? Colors.black : Colors.black,
                    thickness: 5,
                    indent: (live_sec%5==0) ? 45 : 57,
                    endIndent: (live_sec%15==0) ? w/2 :  w/1.22,
                  ),
                ),
              ),
            ),
            Visibility(
              visible: analog,
              child: Transform.rotate(
                angle: pi/2,
                child: Transform.rotate(
                  angle: live_min*(pi*2)/60,
                  child: Divider(
                    color: Colors.green,
                    thickness: 6,
                    indent: 92,
                    endIndent: w/2,
                  ),
                ),
              ),
            ),
            Visibility(
              visible: analog,
              child: Transform.rotate(
                angle: live_hour*pi/6+pi/2,
                child: Divider(
                  color: Colors.blue,
                  thickness: 5,
                  indent: 128,
                  endIndent: w/2,
                ),
              ),
            ),
            Visibility(
              visible: analog,
                child: CircleAvatar(
                  radius: 10,
                ),
            ),
            Visibility(
              visible: analog,
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.red,
                        blurRadius: 20,
                        blurStyle: BlurStyle.outer
                      ),
                    ],
                  ),
                )
            ),
            //Timer watch
            Visibility(
              visible: timer,
              child: Align(
                alignment: Alignment(0, -0.5),
                child: Stack(
                  children: List.generate(60, (index) => Transform.rotate(
                    angle: ((index)*(pi*2))/60,
                    child: Divider(
                      thickness: (index%5==0) ? 3 : 2,
                      color: (index%5==0) ? Colors.black : Colors.red,
                      endIndent: (index%5==0) ? w*0.70 : w*0.72,
                      indent: 90,
                    ),
                  ),
                  ),
                ),
              ),
            ),
            Visibility(
              visible: timer,
                child: Align(
                  alignment: Alignment(0, -0.5),
                  child: Text(
                      " ${hour.toString().padLeft(2,"0")} : ${min.toString().padLeft(2,"0")} : ${sec.toString().padLeft(2,"0")}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26
                    ),
                  ),
                ),
            ),
            Visibility(
                visible: timer,
                child: Align(
                  alignment: Alignment(0, -0.67),
                  child: Container(
                    height: 210,
                    width: 210,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 20,
                          blurStyle: BlurStyle.outer,
                          color: Colors.red,
                        )
                      ],
                      border: Border.all(color: Colors.red),

                    ),
                  ),
                )
            ),
            Visibility(
              visible: timer,
              child: Align(
                alignment: AlignmentDirectional.bottomCenter,
                child: Container(
                  height: 400,
                  width: w,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: FlagList.map((e) =>
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 50,
                              width: 400,
                              margin: EdgeInsets.all(5),
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "$e",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
                                        letterSpacing: 4
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                      ).toList(),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.red.shade100,
                  ),
                ),
              ),
            ),
            //reverce timer
            Visibility(
              visible: reverce,
              child: Align(
                alignment: Alignment(0, -0.5),
                child: Stack(
                  children: List.generate(60, (index) => Transform.rotate(
                    angle: ((index)*(pi*2))/60,
                    child: Divider(
                      thickness: (index%5==0) ? 3 : 2,
                      color: (index%5==0) ? Colors.black : Colors.red,
                      endIndent: (index%5==0) ? w*0.70 : w*0.72,
                      indent: 90,
                    ),
                  ),
                  ),
                ),
              ),
            ),
            Visibility(
              visible: reverce,
              child: Align(
                alignment: Alignment(0, -0.5),
                child: Text(
                  " ${hour1%12} : ${min1.toString().padLeft(2,"0")} : ${sec1.toString().padLeft(2,"0")}",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26
                  ),
                ),
              ),
            ),
            Visibility(
                visible: reverce,
                child: Align(
                  alignment: Alignment(0, -0.67),
                  child: Container(
                    height: 210,
                    width: 210,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 20,
                          blurStyle: BlurStyle.outer,
                          color: Colors.red,
                        )
                      ],
                      border: Border.all(color: Colors.red),

                    ),
                  ),
                )
            ),
            Visibility(
              visible: reverce,
              child: Align(
                alignment: AlignmentDirectional.bottomCenter,
                child: Container(
                  height: 400,
                  width: w,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: FlagList1.map((e) =>
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 50,
                              width: 400,
                              margin: EdgeInsets.all(5),
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "$e",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
                                        letterSpacing: 4
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                      ).toList(),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.red.shade100,
                  ),
                ),
              ),
            ),
            //staps watch
            Visibility(
              visible: straps,
                child: Transform.scale(
                  scale: 7,
                  child: CircularProgressIndicator(
                    strokeWidth: 3,
                    color: Colors.red,
                    value: live_sec/60,
                  ),
                )
            ),
            Visibility(
              visible: straps,
                child: Transform.scale(
                  scale: 5,
                  child: CircularProgressIndicator(
                    strokeWidth: 4,
                    color: Colors.green,
                    value: live_min/60,
                  ),
                )
            ),
            Visibility(
              visible: straps,
                child: Transform.scale(
                  scale: 3,
                  child: CircularProgressIndicator(
                    color: Colors.blue,
                    strokeWidth: 7,
                    value: live_hour/12,
                  ),
                )
            ),
            Visibility(
                visible: straps,
                child: Container(
                  height: 250,
                  width: 270,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 20,
                        blurStyle: BlurStyle.outer,
                        color: Colors.red,
                      )
                    ],
                    border: Border.all(color: Colors.red),
                  ),
                )
            ),
            Visibility(
                visible: straps,
                child: Container(
                  height: 210,
                  width: 180,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 20,
                        blurStyle: BlurStyle.outer,
                        color: Colors.green,
                      )
                    ],
                    border: Border.all(color: Colors.green),
                  ),
                )
            ),
            Visibility(
                visible: straps,
                child: Container(
                  height: 160,
                  width: 110,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 20,
                        blurStyle: BlurStyle.outer,
                        color: Colors.blue,
                      )
                    ],
                    border: Border.all(color: Colors.blue),

                  ),
                )
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Visibility(
            visible: timer,
            child: FloatingActionButton(
              onPressed: (){
                if(!isrunning)
                  {
                      isrunning = true;
                      startTime();
                  }
              },
              child: Icon(
                Icons.not_started
              ),
            ),
          ),
          SizedBox(width: 10,),
          Visibility(
            visible: timer,
            child: FloatingActionButton(
              onPressed: (){
                  if(isrunning)
                    {
                      FlagList.add("${hour%12} : ${min.toString().padLeft(2,"0")} : ${sec.toString().padLeft(2,"0")}");
                    }
              },
              child: Icon(
                Icons.flag,
              ),
            ),
          ),
          SizedBox(width: 10,),
          Visibility(
            visible: reverce,
            child: FloatingActionButton(
              onPressed: (){
                  if(isrunning)
                    {
                      FlagList1.add("${hour1%12} : ${min1.toString().padLeft(2,"0")} : ${sec1.toString().padLeft(2,"0")}");
                    }
              },
              child: Icon(
                Icons.flag,
              ),
            ),
          ),
          SizedBox(width: 10,),
          Visibility(
            visible: timer,
            child: FloatingActionButton(
              onPressed: (){
                    setState(() {
                      isrunning = false;
                    });
              },
              child: Icon(
                Icons.stop
              ),
            ),
          ),
          Visibility(
            visible: reverce,
            child: FloatingActionButton(
              onPressed: (){
                if(!isrunning)
                {
                  isrunning = true;
                  revercetime();
                }
              },
              child: Icon(
                  Icons.not_started
              ),
            ),
          ),
          SizedBox(width: 10,),
          Visibility(
            visible: reverce,
            child: FloatingActionButton(
              onPressed: (){
                setState(() {
                  isrunning = false;
                });
              },
              child: Icon(
                  Icons.stop
              ),
            ),
          ),
        ],
      ),
    );
  }
}
