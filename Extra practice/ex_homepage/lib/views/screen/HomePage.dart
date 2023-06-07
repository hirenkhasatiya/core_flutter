import 'package:ex_homepage/utils/image_utils.dart';
import 'package:ex_homepage/views/screen/detailpage.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ex_homepage/utils/color_utils.dart';
import 'package:ex_homepage/utils/product_utils.dart';
import 'package:flutter/material.dart';

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
        title: const Text(
            "Home Page",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: myBg,
        foregroundColor: Colors.black,
        elevation: 2,
        actions: const [
          Icon(Icons.shopping_cart,color: Colors.white),
          SizedBox(
            width: 10,
          ),
        ],
        flexibleSpace: Image.asset(imagePath+f4,fit: BoxFit.cover,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Smartphones",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: allProducts
                    .map(
                      (pro) => GestureDetector(
                    onTap: () {
                      Route route = MaterialPageRoute(
                        builder: (context) => const DetailPage(),
                      );

                      Navigator.of(context).push(route);
                    },
                        child: Container(
                    height: 280,
                    width: 200,
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
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
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(30),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
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
                                  RatingBarIndicator(
                                    rating: double.parse(pro['rating'].toString()),
                                    itemCount: 5,
                                    itemSize: 20,
                                    direction: Axis.horizontal,
                                    itemBuilder: (context, index) => const Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                  ),
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
            // const SizedBox(
            //   height: 15,
            // ),
            //
            // CircleAvatar(
            //   radius: 100,
            //   backgroundImage: AssetImage(imagePath+allImages[2]),
            //   // foregroundImage: NetworkImage(n2),
            // ),
          ],
        ),
      ),
      backgroundColor: myBg,
    );
  }
}