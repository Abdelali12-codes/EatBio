import 'package:flutter/material.dart';

class FoodDelivery extends StatefulWidget {
  @override
  _FoodDeliveryState createState() => _FoodDeliveryState();
}

class _FoodDeliveryState extends State<FoodDelivery> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Foodie",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontFamily: "Lilly"),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // the horizantale scroll view
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                child: Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ]),
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(6),
                            child: Stack(
                              children: [
                                Container(
                                    width: size.width * 0.60,
                                    height: 130,
                                    child: Image.asset(
                                      "assets/images/first.jpeg",
                                      fit: BoxFit.cover,
                                    )),
                                Positioned(
                                  left: 20,
                                  bottom: 10,
                                  child: Text(
                                    "Noodle",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 26),
                                  ),
                                )
                              ],
                            ))),
                    Container(
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ]),
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(6),
                            child: Stack(
                              children: [
                                Container(
                                    width: size.width * 0.60,
                                    height: 130,
                                    child: Image.asset(
                                      "assets/images/forth.jpeg",
                                      fit: BoxFit.cover,
                                    )),
                                Positioned(
                                  left: 20,
                                  bottom: 10,
                                  child: Text(
                                    "Noodle",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 26),
                                  ),
                                )
                              ],
                            ))),
                    Container(
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ]),
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(6),
                            child: Stack(
                              children: [
                                Container(
                                    width: size.width * 0.60,
                                    height: 130,
                                    child: Image.asset(
                                      "assets/images/second.jpeg",
                                      fit: BoxFit.cover,
                                    )),
                                Positioned(
                                  left: 20,
                                  bottom: 10,
                                  child: Text(
                                    "Pizza",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 26),
                                  ),
                                )
                              ],
                            ))),
                    Container(
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ]),
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(6),
                            child: Stack(
                              children: [
                                Container(
                                    width: size.width * 0.60,
                                    height: 130,
                                    child: Image.asset(
                                      "assets/images/first.jpeg",
                                      fit: BoxFit.cover,
                                    )),
                                Positioned(
                                  left: 20,
                                  bottom: 10,
                                  child: Text(
                                    "Pizza",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 26),
                                  ),
                                )
                              ],
                            ))),
                    Container(
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ]),
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(6),
                            child: Stack(
                              children: [
                                Container(
                                    width: size.width * 0.60,
                                    height: 130,
                                    child: Image.asset(
                                      "assets/images/first.jpeg",
                                      fit: BoxFit.cover,
                                    )),
                                Positioned(
                                  left: 20,
                                  bottom: 10,
                                  child: Text(
                                    "Bread",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 26),
                                  ),
                                )
                              ],
                            )))
                  ],
                ),
              ),
            ),
            // the verticall scroll view;

            Column(
              children: [
                ClipRRect(
                  // borderRadius: BorderRadius.circular(30),
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ]),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          bottomRight: Radius.circular(8)),
                      child: Row(
                        children: [
                          Container(
                              child: ClipRRect(
                            borderRadius: BorderRadius.circular(6),
                            child: Container(
                                width: size.width * 0.30,
                                height: 100,
                                child: Image.asset(
                                  "assets/images/third.jpeg",
                                  fit: BoxFit.cover,
                                )),
                          )),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  // the name of food
                                  Container(
                                    child: Text(
                                      "Bread",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "Spacies:",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "bal bal bal bal bal bal ",
                                      style: TextStyle(
                                          color: Colors.grey[500],
                                          fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(8),
                        bottomRight: Radius.circular(8)),
                    child: Row(
                      children: [
                        Container(
                            child: ClipRRect(
                          borderRadius: BorderRadius.circular(6),
                          child: Container(
                              width: size.width * 0.30,
                              height: 100,
                              child: Image.asset(
                                "assets/images/second.jpeg",
                                fit: BoxFit.cover,
                              )),
                        )),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                // the name of food
                                Container(
                                  child: Text(
                                    "Bread 2",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "Spacies:",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "bal bal bal bal bal bal ",
                                    style: TextStyle(
                                        color: Colors.grey[500], fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Row(
                      children: [
                        Container(
                            child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(8),
                              bottomRight: Radius.circular(8)),
                          child: Container(
                              width: size.width * 0.30,
                              height: 100,
                              child: Image.asset(
                                "assets/images/forth.jpeg",
                                fit: BoxFit.cover,
                              )),
                        )),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                // the name of food
                                Container(
                                  child: Text(
                                    "Pizza",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "Spacies:",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "bal bal bal bal bal bal ",
                                    style: TextStyle(
                                        color: Colors.grey[500], fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Row(
                      children: [
                        Container(
                            child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(8),
                              bottomRight: Radius.circular(8)),
                          child: Container(
                              width: size.width * 0.30,
                              height: 100,
                              child: Image.asset(
                                "assets/images/second.jpeg",
                                fit: BoxFit.cover,
                              )),
                        )),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                // the name of food
                                Container(
                                  child: Text(
                                    "Pizza",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "Spacies:",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "bal bal bal bal bal bal ",
                                    style: TextStyle(
                                        color: Colors.grey[500], fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Row(
                      children: [
                        Container(
                            child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(8),
                              bottomRight: Radius.circular(8)),
                          child: Container(
                              width: size.width * 0.30,
                              height: 100,
                              child: Image.asset(
                                "assets/images/first.jpeg",
                                fit: BoxFit.cover,
                              )),
                        )),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                // the name of food
                                Container(
                                  child: Text(
                                    "Pizza",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "Spacies:",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "bal bal bal bal bal bal ",
                                    style: TextStyle(
                                        color: Colors.grey[500], fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Row(
                      children: [
                        Container(
                            child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(8),
                              bottomRight: Radius.circular(8)),
                          child: Container(
                              width: size.width * 0.30,
                              height: 100,
                              child: Image.asset(
                                "assets/images/third.jpeg",
                                fit: BoxFit.cover,
                              )),
                        )),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                // the name of food
                                Container(
                                  child: Text(
                                    "Noodle",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "Spacies:",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "bal bal bal bal bal bal ",
                                    style: TextStyle(
                                        color: Colors.grey[500], fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Row(
                      children: [
                        Container(
                            child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(8),
                              bottomRight: Radius.circular(8)),
                          child: Container(
                              width: size.width * 0.30,
                              height: 100,
                              child: Image.asset(
                                "assets/images/first.jpeg",
                                fit: BoxFit.cover,
                              )),
                        )),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                // the name of food
                                Container(
                                  child: Text(
                                    "Pizza",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "Spacies:",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "bal bal bal bal bal bal ",
                                    style: TextStyle(
                                        color: Colors.grey[500], fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
