import 'package:flutter/material.dart';
import 'package:Cloud_Login_Signup/classes/login.dart';
import 'package:Cloud_Login_Signup/classes/signup.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      ('login'): (context) => myLogin(),
      ('signup'): (context) => mySignup(),
    },
  ));
}
