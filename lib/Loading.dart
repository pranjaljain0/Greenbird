import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    // Navigator.pushNamed(context, );
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushNamed(context, "/home");
    });
  }

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
          child: SpinKitFadingCircle(
            itemBuilder: (BuildContext context, int index) {
              return DecoratedBox(
                decoration: BoxDecoration(
                  color: index.isEven
                      ? Color.fromRGBO(108, 167, 21, 1)
                      : Color.fromRGBO(169, 235, 205, 0),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
