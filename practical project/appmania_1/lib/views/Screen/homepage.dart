import 'package:appmania_1/utils/RoutesUtils.dart';
import 'package:flutter/material.dart';
import 'package:appmania_1/utils/ColorUtils.dart';
import 'package:appmania_1/utils/ProductUtils.dart';
import 'package:appmania_1/views/component/category_tile.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String? cat;
  RangeValues myRange = const RangeValues(0, 5000);

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
            child: GestureDetector(
              onTap: (){
                Navigator.of(context).pushNamed(MyRoutes.cartPage);
              },
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.shade400,
                ),
                child: const Icon(
                  Icons.shopping_cart_rounded,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Align(
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
                        TextSpan(
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
                    const Padding(padding: EdgeInsets.all(10)),
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
                          text: "  5KM>",
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
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(18),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          DropdownButton(
                            value: cat,
                            hint: const Text("Select category"),
                            items: allCategories
                                .map(
                                  (e) => DropdownMenuItem(
                                value: e,
                                child: Text(e),
                              ),
                            )
                                .toList(),
                            onChanged: (cnt) {
                              setState(() {
                                cat = cnt.toString();
                              });
                            },
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Visibility(
                            visible: cat != null,
                            child: ActionChip(
                              onPressed: () {
                                setState(() {
                                  cat = null;
                                  myRange = const RangeValues(0, 10000);
                                });
                              },
                              label: const Text("Clear"),
                              avatar: const Icon(Icons.close),
                            ),
                          ),
                        ],
                      ),
                      Visibility(
                        visible: cat != null,
                        child: Row(
                          children: [
                            Text(
                              "From\n\$ ${myRange.start.toInt()}",
                              textAlign: TextAlign.center,
                            ),
                            Expanded(
                              child: RangeSlider(
                                min: 0,
                                max: 10000,
                                values: myRange,
                                onChanged: (range) {
                                  setState(() {
                                    myRange = range;
                                  });
                                },
                              ),
                            ),
                            Text(
                              "From\n\$ ${myRange.end.toInt()}",
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                     (cat==null)
                      ?Column(
                       children: allCategories
                       .map((e) => CategoryTile(category: e)).toList(),
                     )
                         : CategoryTile(category: cat!,
                     min:myRange.start,
                     max: myRange.end,)
                    ],
                  ),
                ),
              ),
        ],
    ),
        ),
      ),
    );
  }
}
