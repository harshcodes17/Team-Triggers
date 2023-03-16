import 'package:flutter/material.dart';
import 'package:student_facilitation/screens/home.dart';
import 'package:student_facilitation/screens/welcome.dart';
import 'package:student_facilitation/screens/login.dart';
import 'package:student_facilitation/screens/register.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'welcome',
    routes: {
      'welcome': (context) => WelcomePage(),
      'login': (context) => MyLogin(),
      'register': (context) => MyRegister(),
      'home': (context) => HomePage(),
    },
  ));
}
