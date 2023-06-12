import 'package:flutter/material.dart';
import 'package:appmania_1/utils/ColorUtils.dart';
import 'package:appmania_1/utils/ProductUtils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor:MyBg,
        elevation: 0,
        title: const Align(
          alignment: AlignmentDirectional(-1.3, 0),
          child: Text(
              "Surat City",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        leading: const Icon(
          Icons.location_on_rounded,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 20,
            ),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.shade400,
              ),
              child: const Icon(
                Icons.menu_sharp,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Align(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                left: 20,
              ),
              child: Container(
                alignment: AlignmentDirectional.topStart,
                height: 80,
                width: 400,
                child: const Text.rich(
                      const TextSpan(
                        children: [
                          TextSpan(
                            text: "Find The ",
                            style: TextStyle(
                              fontSize: 35,
                            ),
                          ),
                          TextSpan(
                            text: "Best \nFood ",
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "Around You",
                            style: TextStyle(
                              fontSize: 35,
                            ),
                          )
                        ],
                      ),
                    ),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
              color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  const Padding(padding: const EdgeInsets.all(10)),
                  Icon(
                    Icons.search_rounded,
                    color: Colors.grey.shade500,
                    size: 30,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                      "Search Your Favorite Food",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    width: 65,
                  ),
                  const Icon(Icons.filter_alt_sharp),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional.topStart,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 50,
                ),
                child: Text.rich(
                  TextSpan(
                    children: [
                      const TextSpan(
                        text: "Find",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24
                        ),
                      ),
                      TextSpan(
                        text: "  5KM",
                        style: TextStyle(
                            fontSize: 16,
                          color: Colors.amber.shade800
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Column(
              children: [
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Row(
                    children: allProducts
                        .map(
                          (pro) => GestureDetector(
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 10,
                            right: 10
                          ),
                          child: Container(
                            height: h*0.30,
                            width: w*0.42,
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
                                  child: CircleAvatar(
                                    radius: 65,
                                    foregroundImage: NetworkImage((pro['thumbnail'])),
                                  ),
                                  // Container(
                                  //   decoration: BoxDecoration(
                                  //     image: DecorationImage(
                                  //       image: NetworkImage(pro['thumbnail']),
                                  //       fit: BoxFit.cover,
                                  //     ),
                                  //     color: Colors.grey.shade400,
                                  //     borderRadius: const BorderRadius.vertical(
                                  //       top: Radius.circular(30),
                                  //     ),
                                  //   ),
                                  // ),
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
                                        Text(pro['title']),

                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                        .toList(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: MyBg,
    );
  }
}
