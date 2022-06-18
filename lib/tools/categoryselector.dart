import 'package:flutter/material.dart';
import 'constants.dart';

class categoryselector extends StatefulWidget {
  @override
  _categoryselectorState createState() => _categoryselectorState();
}

class _categoryselectorState extends State<categoryselector> {
  int selectedIndex = 0;
  final List<String> categories = [
    'Messages',
    'Online',
    'Groups',
    'Favourites'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[100],
      height: 90.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
              child: Text(categories[index],
                  style: TextStyle(
                    color:
                        index == selectedIndex ? Colors.white : Colors.white54,
                    fontSize: 16.0,
                    fontFamily: 'Rock Salt',
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  )),
            ),
          );
        },
      ),
    );
  }
}
