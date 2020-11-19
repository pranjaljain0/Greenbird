import 'package:flutter/material.dart';
import 'package:greenbird/Loading.dart';
import 'package:greenbird/Screens/GetStarted.dart';
import 'package:greenbird/Screens/OnBoarding.dart';
import 'package:greenbird/Screens/SignUp.dart';

void main() {
  runApp(MaterialApp(
    // home: Home(),
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => GetStarted(),
      '/gettingStarted': (context) => GetStarted(),
      '/onBoard': (context) => OnBoarding(),
      '/SignUp': (context) => SignUp(),
      '/UserPreference': (context) => GetStarted(),
    },
  ));
}
