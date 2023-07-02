import 'package:clock_app/Utils/routsutils.dart';
import 'package:flutter/material.dart';
import 'package:clock_app/views/screen/inboxPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
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
              title: Text("clock"),
              leading: Icon(Icons.lock_clock),
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
            ),
            ListTile(
              title: Text("Gmail"),
              leading: Icon(Icons.mail_lock_rounded),
            ),
            ListTile(
              title: Text("Facebook"),
              leading: Icon(Icons.facebook),
            ),
            ListTile(
              title: Text("Logout"),
              leading: Icon(Icons.logout),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){},
              child: const Text(
                  "Elevated Button",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            OutlinedButton(
              onPressed: (){},
              child: const Text(
                  "Outline Button",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextButton(
              onPressed: (){},
              child: const Text(
                  "Text Button",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            IconButton(
              onPressed: (){},
              icon: const Icon(
                Icons.add_a_photo,
                size: 40,
              ),
            ),
            MaterialButton(
              splashColor: Colors.amber,
              color: Colors.blueAccent,
              onPressed: (){},
              child: const Text(
                  "Material Button",
                style:  TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 50,
              ),
              child: Row(
                children: [
                  FloatingActionButton(
                      onPressed: (){},
                    backgroundColor: Colors.red,
                    child: const Icon(
                      Icons.call,
                    ),
                  ),
                  const SizedBox(width: 170),
                  FloatingActionButton(
                      onPressed: (){},
                    backgroundColor: Colors.green,
                    child: const Icon(
                      Icons.call,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
