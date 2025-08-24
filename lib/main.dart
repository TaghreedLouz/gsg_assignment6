import 'package:flutter/material.dart';
import 'package:gsg_assignment6/routes.dart';
import 'package:gsg_assignment6/screens/home_screen.dart';
import 'package:gsg_assignment6/screens/login_screen.dart';
import 'package:gsg_assignment6/screens/signup_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginScreen(),
    routes: {
      Routes.login: (context) => LoginScreen(),
      Routes.home: (context) => HomeScreen(),
      Routes.signup: (context) => SignupScreen(),
    },
  ));
}
