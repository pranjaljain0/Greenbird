import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomPadding: false,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                // colors: [Color(0xff6CA715), Color(0xffA9EBCD)],
                colors: [
              Color.fromRGBO(108, 167, 21, 0.5),
              Color.fromRGBO(169, 235, 205, 0.5)
            ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SvgPicture.asset(
                      "images/logo.svg",
                      semanticsLabel: 'A red up arrow',
                      allowDrawingOutsideViewBox: true,
                      width: 60,
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Text(
                        "Greenbird",
                        style: TextStyle(
                            color: Color(0xff107762),
                            fontFamily: 'Poppins',
                            fontSize: 22,
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  // decoration: BoxDecoration(color: Colors.white),
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        child: Text(
                          "Enter your email",
                          // textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color(0xff107762),
                              fontFamily: 'Poppins',
                              fontSize: 26,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        child: TextField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'user@example.com'),
                        ),
                      ),
                      RaisedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/onBoard");
                          // print("SignUp");
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        color: Color(0xff138069),
                        focusColor: Colors.white,
                        padding:
                            EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              fontFamily: 'Poppins', color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              // Expanded(
              //   child: Container(
              //     // decoration: BoxDecoration(color: Colors.white),
              //     padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              //     child: Column(
              //       children: <Widget>[
              //         Container(
              //           width: double.infinity,
              //           child: Text(
              //             "Enter your email",
              //             // textAlign: TextAlign.left,
              //             style: TextStyle(
              //                 color: Color(0xff107762),
              //                 fontFamily: 'Poppins',
              //                 fontSize: 26,
              //                 fontWeight: FontWeight.w600),
              //           ),
              //         ),
              //         TextField(
              //           decoration: InputDecoration(
              //               border: InputBorder.none,
              //               hintText: 'user@example.com'),
              //         )
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
