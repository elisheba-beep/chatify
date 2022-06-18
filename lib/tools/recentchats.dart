import 'package:chatify/individualchatscreen.dart';
import 'package:chatify/tools/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:chatify/messages.dart';

class recentchats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white60,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: ListView.builder(
              itemCount: chats.length,
              itemBuilder: (BuildContext context, int index) {
                final Messages chat = chats[index];
                return GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => individualchatscreen(
                                user: chat.sender,
                              ))),
                  child: Container(
                    decoration: BoxDecoration(
                        color: chat.unRead ? Colors.blue[100] : Colors.white70,
                        borderRadius: BorderRadius.circular(20.0)),
                    margin: EdgeInsets.all(5.0),
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: CircleAvatar(
                                radius: 35.0,
                                backgroundImage:
                                    AssetImage(chat.sender.imageUrl),
                              ),
                            ),
                            SizedBox(width: 3.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  chat.sender.name,
                                  style: kSmallerTextStyle.copyWith(
                                      color: Colors.black45,
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  child: Text(
                                    chat.text,
                                    style: kSmallerTextStyle.copyWith(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 10.0),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              chat.time,
                              style: kSmallTextStyle.copyWith(
                                  color: Colors.black45),
                            ),
                            Text(
                              chat.unRead ? 'New' : '',
                              style: kSmallerTextStyle.copyWith(
                                  color: Colors.blue[300]),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
