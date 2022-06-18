import 'package:chatify/tools/myroundbutton.dart';
import 'package:flutter/material.dart';
import 'tools/constants.dart';

class Loginscreen extends StatefulWidget {
  @override
  _LoginscreenState createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
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
                TextField(
                  textAlign: TextAlign.center,
                  onChanged: (value) {},
                  decoration:
                      kTextFieldDecoration.copyWith(hintText: 'Username'),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextField(
                  textAlign: TextAlign.center,
                  obscureText: true,
                  onChanged: (value) {},
                  decoration:
                      kTextFieldDecoration.copyWith(hintText: 'Password'),
                ),
                SizedBox(
                  height: 20.0,
                ),
                myroundbutton(
                  title: 'Log In',
                  onPressed: () {
                    Navigator.pushNamed(context, '/third');
                  },
                  colour: Colors.blue[900],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
