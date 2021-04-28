import 'package:eatbio_project/pages/delivery_page.dart';
// import 'package:eatbio_project/screens/form_screen.dart';
// import 'package:eatbio_project/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  AnimationController animationController;
  Animation<double> animation;
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    animation =
        CurvedAnimation(parent: animationController, curve: Curves.easeOut);
    animation.addListener(() => this.setState(() {}));
    animationController.forward();
    Future.delayed(Duration(milliseconds: 5000), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => DeliveryPage()),
          (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Column(
          //   children: [
          //     Padding(
          //       padding: EdgeInsets.only(bottom: 30.0),
          //       child: Image.asset(
          //         "assets/icons/powered_by.png",
          //         height: 25,
          //         fit: BoxFit.cover,
          //       ),
          //     )
          //   ],
          // ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/gluten_logo.png",
                width: animation.value * 250,
                height: animation.value * 250,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Center(
                  child: Text("Darna Food",
                      style: GoogleFonts.pacifico().copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
