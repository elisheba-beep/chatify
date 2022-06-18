import 'package:chatify/tools/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'tools/categoryselector.dart';
import 'tools/recentupdates.dart';
import 'tools/recentchats.dart';

class chatsscreen extends StatefulWidget {
  @override
  _chatsscreenState createState() => _chatsscreenState();
}

class _chatsscreenState extends State<chatsscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          iconSize: 30.0,
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[100],
        title: Text(
          'CHATS',
          style: kSmallTextStyle.copyWith(fontFamily: 'Rock Salt'),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            iconSize: 30.0,
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          categoryselector(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                children: <Widget>[
                  recentupdates(),
                  recentchats(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
