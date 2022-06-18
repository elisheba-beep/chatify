import 'package:flutter/material.dart';

class myroundbutton extends StatelessWidget {
  final Color colour;
  final String title;
  final Function onPressed;
  myroundbutton(
      {@required this.colour, @required this.title, @required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: colour,
      child: MaterialButton(
        minWidth: 100.0,
        height: 25.0,
        child: Text(
          title,
          style: TextStyle(
            fontFamily: 'Rock Salt',
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
