import 'package:chatify/loginscreen.dart';
import 'package:chatify/chatsscreen.dart';
import 'package:chatify/signupscreen.dart';
import 'package:flutter/material.dart';
import 'welcomescreen.dart';
import 'signupscreen.dart';
import 'loginscreen.dart';
import 'individualchatscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark()
            .copyWith(scaffoldBackgroundColor: Colors.blue[100]),
        initialRoute: '/',
        routes: {
          '/': (context) => (Welcomescreen()),
          '/first': (context) => (Signupscreen()),
          '/second': (context) => (Loginscreen()),
          '/third': (context) => (chatsscreen()),
        });
  }
}
