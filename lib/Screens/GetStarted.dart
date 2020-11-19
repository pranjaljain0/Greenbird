import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                // colors: [Color(0xff6CA715), Color(0xffA9EBCD)],
                colors: [
              Color.fromRGBO(108, 167, 21, 0.5),
              Color.fromRGBO(169, 235, 205, 0.5)
            ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset(
                "images/logo.svg",
                semanticsLabel: 'A red up arrow',
                allowDrawingOutsideViewBox: true,
                width: 200,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                child: Text(
                  "Begin your Journey with Greenbird",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xff107762),
                      fontFamily: 'Poppins',
                      fontSize: 32,
                      fontWeight: FontWeight.w600),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/SignUp");
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                color: Color(0xff138069),
                focusColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                child: Text(
                  "Get Started",
                  style: TextStyle(fontFamily: 'Poppins', color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
