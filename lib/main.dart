import 'package:flutter/material.dart';
import 'package:flutter_ewaste/first_screen.dart';
import 'package:flutter_ewaste/reset_password.dart';
import 'package:flutter_ewaste/sign_in_screen.dart';
import 'package:flutter_ewaste/sign_up_screen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'e-waste',
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const FirstScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/sign-up': (context) => const SignUpScreen(),
        '/sign-in': (context) => const SignInScreen(),
        '/reset-password': (context) => const ResetPassword(),
      },
    ),
  );
}
