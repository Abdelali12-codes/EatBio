import 'package:eatbio_project/screens/login.dart';
import 'package:eatbio_project/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
      child: Stack(
        children: [
          // Container(
          //   width: size.width,
          //   height: size.height * 0.40,
          //   child: Image.asset(
          //     "assets/images/eat.jpeg",
          //     fit: BoxFit.cover,
          //   ),
          // ),
          Container(
            child: ClipPath(
              clipper: OvalBottomBorderClipper(),
              child: Container(
                width: size.width,
                height: size.height * 0.45,
                // margin: EdgeInsets.only(bottom: 10),
                child: Image.asset(
                  "assets/images/darna.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.white,
              width: size.width,
              height: size.height * 0.55,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.blue, shape: BoxShape.circle),
                          child: IconButton(
                            padding: EdgeInsets.all(0),
                            icon: Icon(
                              EvilIcons.sc_facebook,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.red, shape: BoxShape.circle),
                          child: IconButton(
                            padding: EdgeInsets.all(0),
                            icon: Icon(
                              Entypo.google_,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.blue[500]),
                          child: IconButton(
                            padding: EdgeInsets.all(0),
                            icon: Icon(
                              Entypo.skype,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Text(
                      "Already have an account ?",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 30,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(14)),
                    child: FlatButton(
                      minWidth: 100,
                      height: 30,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Are you new ? Create account !",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 30,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(14)),
                    child: FlatButton(
                      minWidth: 150,
                      height: 30,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen()));
                      },
                      child: Text(
                        "Create account",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "By logging you are accept term of service",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OvalBottomBorderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height - 40);
    path.quadraticBezierTo(
        size.width / 4, size.height, size.width / 2, size.height);
    path.quadraticBezierTo(
        size.width - size.width / 4, size.height, size.width, size.height - 40);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
