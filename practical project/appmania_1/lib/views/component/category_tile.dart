import 'package:appmania_1/views/Screen/DetailPage.dart';
import 'package:flutter/material.dart';
import 'package:appmania_1/views/component/MyBackBotton.dart';
import 'package:appmania_1/utils/ProductUtils.dart';
import 'package:appmania_1/utils/RoutesUtils.dart';

class CategoryTile extends StatelessWidget {
  final String category;
  double min = 0;
  double max = 10000;
  CategoryTile({super.key, required this.category, this.min = 0, this.max = 10000});

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 15,
        ),
        Text(
          category,
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
            children:[
              Column(
                children: allProducts1
                    .map(
                      (pro) => (pro['category'] == category)
                          ?(min <= pro['price'] && pro['price'] <= max)
                          ?GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushNamed(MyRoutes.detailPage, arguments: pro);
                        },
                        child: Container(
                          height: h * 0.35,
                          width: w * 0.42,
                          margin: EdgeInsets.only(bottom: 20),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3,
                                color: Colors.grey.shade500,
                                offset: Offset(1,1),
                              ),
                            ],
                          ),
                          padding: EdgeInsets.only(top: 30),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 80,
                                foregroundImage: NetworkImage(pro['thumbnail']),
                              ),
                              // Container(
                              //   height: h * 0.26,
                              //   width: w * 0.60,
                              //   decoration: BoxDecoration(
                              //     color: Colors.white,
                              //     borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                              //     image: DecorationImage(
                              //       image: NetworkImage(pro['thumbnail']),
                              //       fit: BoxFit.fill,
                              //     ),
                              //   ),
                              // ),
                              SizedBox(
                                height: 42,
                              ),
                              Align(
                                alignment: Alignment(-0.7,0),
                                child: Text(pro['title'],
                                  style: TextStyle(
                                    fontSize: 14,
                                    overflow: TextOverflow.ellipsis,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Stack(
                                children:[ Align(
                                  alignment: Alignment(-0.90,0),
                                  child: Text("\$ ${pro['price']}".toString(),
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                                  Align(
                                    alignment: AlignmentDirectional.bottomEnd,
                                    child: Container(
                                      height: 40.5,
                                      width: 40,
                                      decoration: BoxDecoration(
                                      color: Colors.brown,
                                        borderRadius:BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                            bottomRight: Radius.circular(20),
                                        )
                                      ),
                                     child: Icon(
                                       Icons.add,
                                       color: Colors.white,
                                     ),
                                    ),
                                  )
                                ]
                              ),
                            ],
                          ),
                        ),
                      )
                  : Container()
                  : Container(),
                ).toList(),
              ),
              SizedBox(width: 25,),
              Column(
                children: allProducts2
                    .map(
                      (pro) => (pro['category'] == category)
                      ?(min <= pro['price'] && pro['price'] <= max)
                      ?GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushNamed(MyRoutes.detailPage, arguments: pro);
                    },
                    child: Container(
                      height: h * 0.35,
                      width: w * 0.42,
                      margin: EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            color: Colors.grey.shade500,
                            offset: Offset(1,1),
                          ),
                        ],
                      ),
                      //padding: EdgeInsets.only(top: 1),
                      child: Column(
                        children: [
                          Container(
                            height: h * 0.26,
                            width: w * 0.60,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                              image: DecorationImage(
                                image: NetworkImage(pro['thumbnail']),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Align(
                            alignment: Alignment(-0.7,0),
                            child: Text(pro['title'],
                              style: TextStyle(
                                fontSize: 14,
                                overflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Stack(
                              children:[ Align(
                                alignment: Alignment(-0.90,0),
                                child: Text("\$ ${pro['price']}".toString(),
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                                Align(
                                  alignment: AlignmentDirectional.bottomEnd,
                                  child: Container(
                                    height: 40.5,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.brown,
                                        borderRadius:BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                        )
                                    ),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              ]
                          ),
                        ],
                      ),
                    ),
                  )
                      : Container()
                      : Container(),
                ).toList(),
              ),

            ],
          ),
        ),
      ],
    );
  }
}