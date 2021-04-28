import 'package:eatbio_project/screens/form_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_icons/flutter_icons.dart';

class DeliveryPage extends StatefulWidget {
  @override
  _DeliveryPageState createState() => _DeliveryPageState();
}

class _DeliveryPageState extends State<DeliveryPage> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
    Future.delayed(Duration(milliseconds: 1000), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => FormScreen()),
          (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
      child: Stack(
        children: [
          Container(
              width: size.width,
              height: size.height,
              color: Theme.of(context).primaryColor,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Text(
                        "darna food",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontFamily: "Lily",
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                        child: Image.asset(
                      "assets/images/motorbike.png",
                      fit: BoxFit.cover,
                    )),
                    Container(
                      width: size.width,
                      alignment: Alignment.center,
                      // color: Colors.red,
                      child: Stack(fit: StackFit.passthrough, children: [
                        Container(
                          // width: 200,
                          width: 240,

                          height: 130,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(6)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                  child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    FontAwesome5.bell,
                                    color: Colors.yellow,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Container(
                                    child:
                                        Text("darna food needs your location"),
                                  )
                                ],
                              )),
                              Container(
                                alignment: Alignment.center,
                                child: Text("Detect Location"),
                                width: 120,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.yellow,
                                    borderRadius: BorderRadius.circular(8)),
                              )
                            ],
                          ),
                        ),
                        // Positioned(
                        //   top: 0,
                        //   right: -10,
                        //   child: Container(
                        //     width: 20,
                        //     height: 20,
                        //     color: Colors.blue,
                        //   ),
                        // )
                      ]),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ]))
        ],
      ),
    );
  }
}
