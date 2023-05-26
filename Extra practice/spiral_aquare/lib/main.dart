import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text("Hiren"),
          centerTitle: true,
        ),
        body: Align(
          alignment: Alignment.center,
          child: Container(
            height: 400,
            width: 400,
            decoration: BoxDecoration(
              border: Border(
                    bottom: BorderSide(
                  color: Colors.black,
                width: 15,
              ),
                right: BorderSide(
                  color: Colors.black,
                  width: 15,
                ),
              ),
            ),
            alignment: Alignment.topRight,
            child: Container(
              height: 350,
              width: 350,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.black,
                    width: 15,
                  ),
                  left: BorderSide(
                    color: Colors.black,
                    width: 15,
                  ),
                ),
              ),
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 15,
                    ),
                    right: BorderSide(
                      color: Colors.black,
                      width: 15,
                    ),
                  ),
                ),
              alignment: Alignment.topRight,
              child: Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Colors.black,
                      width: 15,
                    ),
                    left: BorderSide(
                      color: Colors.black,
                      width: 15,
                    ),
                  ),
                ),
                alignment: Alignment.bottomLeft,
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.black,
                        width: 15,
                      ),
                      right: BorderSide(
                        color: Colors.black,
                        width: 15,
                      ),
                    ),
                  ),
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: Colors.black,
                          width: 15,
                        ),
                        left: BorderSide(
                          color: Colors.black,
                          width: 15,
                        ),
                      ),
                    ),
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.black,
                            width: 15,
                          ),
                          right: BorderSide(
                            color: Colors.black,
                            width: 15,
                          ),
                        ),
                      ),
                      alignment: Alignment.topRight,
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(
                              color: Colors.black,
                              width: 15,
                            ),
                            left: BorderSide(
                              color: Colors.black,
                              width: 15,
                            ),
                          ),
                        ),
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.black,
                                width: 15,
                              ),
                              right: BorderSide(
                                color: Colors.black,
                                width: 15,
                              ),
                            ),
                          ),
                          alignment: Alignment.topRight,
                          child: Container(
                            height: 5,
                            width: 5,
                            decoration: BoxDecoration(
                              border: Border(
                                top: BorderSide(
                                  color: Colors.black,
                                  width: 5,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
