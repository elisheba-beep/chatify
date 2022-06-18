import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'tools/myroundbutton.dart';
import 'tools/constants.dart';

class Welcomescreen extends StatefulWidget {
  @override
  _WelcomescreenState createState() => _WelcomescreenState();
}

class _WelcomescreenState extends State<Welcomescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/welcome.gif'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: 'Title',
                child: Text(
                  'CHATIFY',
                  textAlign: TextAlign.center,
                  style: kLargeTextStyle,
                ),
              ),
              Text(
                'This is a quote to make you feel better',
                textAlign: TextAlign.center,
                style: kSmallTextStyle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  myroundbutton(
                    colour: Colors.black,
                    title: 'Sign Up',
                    onPressed: () {
                      Navigator.pushNamed(context, '/first');
                    },
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  myroundbutton(
                    colour: Colors.black,
                    title: 'Log In',
                    onPressed: () {
                      Navigator.pushNamed(context, '/second');
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
