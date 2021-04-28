import 'package:eatbio_project/screens/home_screen.dart';
import 'package:eatbio_project/screens/services_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  bool hide = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: size.width,
            height: size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 80,
                ),
                Container(
                  child: Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: size.width * 0.90,
                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(9)),
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                      color: Colors.black, width: 2)),
                              hintText: "Enter your email",
                              hintStyle: TextStyle(color: Colors.grey[500]),
                              prefixIcon:
                                  Icon(MaterialCommunityIcons.email_outline)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          obscureText: hide ? true : false,
                          obscuringCharacter: '*',
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(
                              hintText: "Enter your password",
                              suffixIcon: IconButton(
                                icon: hide
                                    ? Icon(Icons.visibility)
                                    : Icon(Icons.visibility_off),
                                onPressed: () {
                                  setState(() {
                                    hide = !hide;
                                  });
                                },
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                      color: Colors.black, width: 2)),
                              hintStyle: TextStyle(color: Colors.grey[500]),
                              prefixIcon: Icon(MaterialIcons.lock)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: size.width * 0.5,
                          height: 34,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Theme.of(context).primaryColor),
                          child: FlatButton(
                            minWidth: size.width * 0.5,
                            height: 34,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()),
                              );
                            },
                            child: Text(
                              "Login",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                // Container(
                //   child: Text(
                //     "By Sing in you are accepting all ther terms and services",
                //     style: TextStyle(decoration: TextDecoration.underline),
                //   ),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
