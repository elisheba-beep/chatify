import 'package:chatify/tools/constants.dart';
import 'package:chatify/tools/myroundbutton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signupscreen extends StatefulWidget {
  @override
  _SignupscreenState createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(25.0),
        child: SafeArea(
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Hero(
                  tag: 'Title',
                  child: Text(
                    'CHATIFY',
                    style: kLargeTextStyle,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextField(
                  textAlign: TextAlign.center,
                  onChanged: (value) {},
                  decoration: kTextFieldDecoration.copyWith(
                      hintText: 'Type in your phone number'),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextField(
                  textAlign: TextAlign.center,
                  onChanged: (value) {},
                  decoration: kTextFieldDecoration.copyWith(
                      hintText: 'Type in your username'),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextField(
                  textAlign: TextAlign.center,
                  obscureText: true,
                  onChanged: (value) {},
                  decoration: kTextFieldDecoration.copyWith(
                      hintText: 'Type in your password'),
                ),
                SizedBox(
                  height: 20.0,
                ),
                myroundbutton(
                  title: 'Google Sign Up',
                  colour: Colors.blue,
                  onPressed: () {},
                ),
                SizedBox(
                  height: 10.0,
                ),
                myroundbutton(
                  title: 'Sign Up',
                  colour: Colors.blue[900],
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
