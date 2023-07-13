import 'dart:math';
import 'package:clock_app/Utils/routsutils.dart';
import 'package:flutter/material.dart';
import 'package:clock_app/views/screen/inboxPage.dart';
import 'package:one_clock/one_clock.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _InboxPageState();
}

class _InboxPageState extends State<HomePage>{

  int sec =0;
  int min =0;
  int hour =0;
  int live_sec =0;
  int live_min =0;
  int live_hour =0;

  bool timer = false;
  bool straps = false;
  bool analog = false;
  bool digital = false;

  bool isrunning = false;

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

  StartLiveTime()
  {
    Future.delayed(
        const Duration(seconds: 1),
        (){
          setState(() {
            live_sec = DateTime.now().second;
            live_min = DateTime.now().minute;
            live_hour = DateTime.now().hour;
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
        title: const Text("Clock App"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.indigoAccent
              ),
              currentAccountPicture: CircleAvatar(
                foregroundImage: NetworkImage("https://static.vecteezy.com/system/resources/previews/019/896/008/original/male-user-avatar-icon-in-flat-design-style-person-signs-illustration-png.png"),
              ),
              accountName: Text("Hiren Khasatiya"),
              accountEmail: Text("Hiren123@gmail.com"),
            ),
            ListTile(
              onTap: (){
                Navigator.of(context).pushNamed(MyRoutes.inbox);
              },
              title: Text("All Inbox"),
              leading: Icon(Icons.message),
            ),
            ListTile(
              onTap: (){
                Navigator.of(context).pushNamed(MyRoutes.Clock);
              },
              title: Text("clock"),
              leading: Icon(Icons.watch_later_outlined),
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
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
              title: Text("Timer"),
              trailing: Switch(
                value: timer,
                onChanged: (val) {
                  setState(() {
                    straps=false;
                    analog=false;
                    digital=false;
                    timer = val;
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
                    straps = val;
                  });
                },
              ),
            ),
            ListTile(
              title: Text("Analog"),
              trailing: Switch(
                value: analog,
                onChanged: (val) {
                  setState(() {
                    digital=false;
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
          alignment: Alignment.center,
          children: [
            Visibility(
              visible: digital,
              child: DigitalClock(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(width: 1,color: Colors.black),
                ),
                showSeconds: true,
              ),
            ),
            //timer
            Visibility(
              visible: timer || analog,
              child: Stack(
                children: List.generate(60, (index) => Transform.rotate(
                    angle: ((index)*(pi*2))/60,
                  child: Divider(
                    thickness: (index%5==0) ? 2 : 1,
                    color: (index%5==0) ? Colors.black : Colors.red,
                    endIndent: (index%5==0) ? w*0.95 : w*0.98,
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
                    color: Colors.black,
                    thickness: 2,
                    indent: 65,
                    endIndent: w/2,
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
                    color: Colors.black,
                    thickness: 2,
                    indent: 80,
                    endIndent: w/2,
                  ),
                ),
              ),
            ),
            Visibility(
              visible: analog,
              child: Transform.rotate(
                angle: pi/2,
                child: Transform.rotate(
                  angle: live_hour*(pi*2)/12,
                  child: Divider(
                    color: Colors.black,
                    thickness: 3,
                    indent: 95,
                    endIndent: w/2,
                  ),
                ),
              ),
            ),
            Visibility(
              visible: analog ,
              child: CircleAvatar(
                radius: 10,
              ),
            ),
            //analog
            Visibility(
              visible: timer,
              child: Transform.rotate(
                angle: pi/2,
                child: Transform.rotate(
                  angle: sec*(pi*2)/60,
                  child: Divider(
                    color: Colors.black,
                    thickness: 2,
                    indent: 65,
                    endIndent: w/2,
                  ),
                ),
              ),
            ),
            Visibility(
              visible: timer,
              child: Transform.rotate(
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
            ),
            Visibility(
              visible: timer,
              child: Transform.rotate(
                angle: pi/2,
                child: Transform.rotate(
                  angle: hour*(pi/2)%12,
                  child: Divider(
                    color: Colors.black,
                    thickness: 3,
                    indent: 95,
                    endIndent: w/2,
                  ),
                ),
              ),
            ),
            Visibility(
              visible: timer ,
              child: CircleAvatar(
                radius: 10,
              ),
            ),
            //Strap
            Visibility(
              visible: straps,
                child: Transform.scale(
                  scale: 8,
                  child: CircularProgressIndicator(
                    strokeWidth: 3,
                    value: live_sec/60,
                  ),
                ),
            ),
            Visibility(
              visible: straps,
                child: Transform.scale(
                  scale: 6,
                  child: CircularProgressIndicator(

                    value: live_min/60,
                  ),
                ),
            ),
            Visibility(
              visible: straps,
                child: Transform.scale(
                  scale: 4,
                  child: CircularProgressIndicator(
                    value: live_hour/12,
                  ),
                ),
            ),
          ],
        ),
      ),
      floatingActionButton: Visibility(
        visible: timer,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: (){
                setState(() {
                  isrunning=false;
                });
              },
              child: Icon(
                Icons.stop,
              ),
            ),
            SizedBox(width: 10,),
            FloatingActionButton(
              onPressed: (){
                setState(() {
                  if(!isrunning)
                  {
                    isrunning = true;
                    startTime();
                  }
                });
              },
              child: Icon(
                Icons.timer,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
