import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:chatify/messages.dart';
import 'package:chatify/individualchatscreen.dart';

class recentupdates extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Recent Updates',
                  style: kSmallerTextStyle,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_horiz,
                    color: Colors.black45,
                    size: 30.0,
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 120.0,
            child: ListView.builder(
                padding: EdgeInsets.only(left: 10.0),
                scrollDirection: Axis.horizontal,
                itemCount: recentUpdates.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => individualchatscreen(
                            user: recentUpdates[index],
                          ),
                        ),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Column(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 35.0,
                            backgroundImage:
                                AssetImage(recentUpdates[index].imageUrl),
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            recentUpdates[index].name,
                            style: kSmallerTextStyle,
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
