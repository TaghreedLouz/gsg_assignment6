import 'package:flutter/material.dart';
import 'package:gsg_assignment6/routes.dart';
import 'package:gsg_assignment6/screens/freelancer_details_screen.dart';
import 'package:gsg_assignment6/screens/home_screen.dart';
import 'package:gsg_assignment6/screens/login_screen.dart';
import 'package:gsg_assignment6/screens/main_screen.dart';
import 'package:gsg_assignment6/screens/signup_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainScreen(),
    routes: {
      Routes.login: (context) => LoginScreen(),
      Routes.home: (context) => HomeScreen(),
      Routes.signup: (context) => SignupScreen(),
      Routes.main: (context) => MainScreen(),
      Routes.freelancerDetails: (context) => FreelancerDetailsScreen()
    },
  ));
}
