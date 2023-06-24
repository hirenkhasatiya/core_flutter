import 'package:flutter/material.dart';
import 'package:travelling_app/utils/cityutils.dart';
import 'package:travelling_app/utils/colorutils.dart';
import 'package:travelling_app/utils/image_utils.dart';
import 'package:travelling_app/utils/routsutils.dart';
import 'package:travelling_app/view/screen/detailpage.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: Icon(Icons.tour,color: Colors.black),
        actions: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.local_airport_rounded,color: Colors.black,),
        )],
        title: Text(
          "Tourist",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: MyBg,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Container(
                height: h*0.3,
                width: w*1,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "Choose & Discover",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(n3),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            SizedBox(height: 30,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: allcity
                    .map(
                      (pro) => GestureDetector(
                    onTap: () {
                      // Route route = MaterialPageRoute(
                      //   // builder: (context) => DetailPage(
                      //   //   title: pro['title'],
                      //   // ),
                      // );
                      //
                      // Navigator.of(context).push(route);

                    },
                    child: Container(
                      height: h*0.5,
                      width: w*1,
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 1,
                            color: Colors.grey,
                            offset: Offset(3, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(pro['thumbnail']),
                                  fit: BoxFit.cover,
                                ),
                                color: Colors.grey.shade400,
                                borderRadius: const BorderRadius.vertical(
                                  top: Radius.circular(30),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.vertical(
                                  bottom: Radius.circular(30),
                                ),
                              ),
                              padding: const EdgeInsets.all(8),
                              alignment: Alignment.topLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(pro['title'],style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold
                                  )),
                                  Text(pro['description'],maxLines: 3),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(pro['price'].toString(),style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
                    .toList(),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
