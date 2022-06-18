import 'package:flutter/material.dart';

const kLargeTextStyle = TextStyle(
    color: Colors.black,
    fontSize: 25.0,
    fontWeight: FontWeight.bold,
    fontFamily: 'Rock Salt');

const kSmallTextStyle = TextStyle(
  fontStyle: FontStyle.italic,
  fontFamily: 'Roboto',
);

const kTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(
    vertical: 10.0,
    horizontal: 20.0,
  ),
  hintText: '',
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(30.0)),
    borderSide: BorderSide(
      width: 1.0,
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      width: 1.0,
      color: Colors.black,
    ),
    borderRadius: BorderRadius.all(Radius.circular(30.0)),
  ),
  disabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(30.0)),
    borderSide: BorderSide(width: 2.0, color: Colors.black45),
  ),
);

const kSmallerTextStyle = TextStyle(
  color: Colors.black45,
  fontFamily: 'Rock Salt',
  letterSpacing: 1.0,
);
