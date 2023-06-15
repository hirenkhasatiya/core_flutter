import 'package:appmania_1/utils/ColorUtils.dart';
import 'package:appmania_1/utils/RoutesUtils.dart';
import 'package:appmania_1/views/Screen/CartPage.dart';
import 'package:appmania_1/views/component/MyBackBotton.dart';
import 'package:appmania_1/utils/ProductUtils.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int counter =0;
  @override
  Widget build(BuildContext context) {
    //Catch data in named routing
    Map data = ModalRoute.of(context)!.settings.arguments as Map;

    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;

    return Scaffold(
      appBar: AppBar(
        leading: const MyBackButton(),
        title: const Text("Detail page"),
        centerTitle: true,
        backgroundColor: MyBg,
        foregroundColor: Colors.black,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(MyRoutes.cartPage);
            },
            icon: const Icon(
              Icons.shopping_cart,
            ),
          ),
        ],
      ),
      body: Center(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Stack(
                  children: [
                    Align(
                      child: CircleAvatar(
                        radius: 100,
                        foregroundImage: NetworkImage(data['thumbnail']),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: h * 0.67,
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        color: Colors.grey,
                      ),
                    ],
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: h*0.05,
                        width: w*0.30,
                        decoration: BoxDecoration(
                          color: Colors.brown,
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 5,
                            right: 5,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    counter--;
                                  });
                                },
                                child: Icon(
                                    Icons.remove,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                  "$counter",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    counter++;
                                  });
                                },
                                child: Icon(
                                    Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          Align(
                            child: Text(
                              data['title'],
                              style: const TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )

                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        data['description'],
                        style: TextStyle(
                          color: Colors.black38,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Expanded(
                            flex:4,
                            child: Text(
                              "\$ ${data['price']}",
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                Text(
                                  "${data['rating']}",
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: Expanded(
                child: GestureDetector(
                  onTap: (){
                    if (!cartItems.contains(data)) {
                      cartItems.add(data);
                    }
                  },
                  child: Container(
                    height: h*0.1,
                    width: w*1,
                    color: Colors.brown,
                    child: Align(
                      alignment: AlignmentDirectional.center,
                      child: Text(
                          "Add To Cart",
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: MyBg,
    );
  }
}