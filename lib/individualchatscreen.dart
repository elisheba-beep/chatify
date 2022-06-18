import 'package:chatify/messages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'user.dart';
import 'tools/constants.dart';

class individualchatscreen extends StatefulWidget {
  final User user;
  individualchatscreen({this.user});

  @override
  _individualchatscreenState createState() => _individualchatscreenState();
}

class _individualchatscreenState extends State<individualchatscreen> {
  _buildMessage(Messages message, bool isMe) {
    final Container msg = Container(
      width: MediaQuery.of(context).size.width * 0.75,
      margin: isMe
          ? EdgeInsets.only(top: 8.0, bottom: 8.0, left: 80.0)
          : EdgeInsets.only(
              top: 8.0,
              bottom: 8.0,
            ),
      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            message.time,
            style: kSmallTextStyle.copyWith(color: Colors.black45),
          ),
          SizedBox(
            height: 7.0,
          ),
          Text(
            message.text,
            style: kSmallerTextStyle,
          ),
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: isMe
            ? BorderRadius.only(
                topLeft: Radius.circular(15.0),
                bottomLeft: Radius.circular(15.0))
            : BorderRadius.only(
                topRight: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
              ),
        color: isMe ? Colors.blue[100] : Colors.white70,
      ),
    );
    if (isMe) {
      return msg;
    }
    return Row(
      children: <Widget>[
        msg,
        IconButton(
          onPressed: () {},
          icon: message.isLiked
              ? Icon(
                  Icons.favorite,
                  color: Colors.red,
                )
              : (Icon(
                  Icons.favorite_border,
                  color: Colors.black45,
                )),
        ),
      ],
    );
  }

  _buildMessageComposer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      height: 70.0,
      color: Colors.white70,
      child: Row(
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.attach_file),
            iconSize: 25.0,
            color: Colors.blue[100],
          ),
          Expanded(
            child: TextField(
              style: kSmallerTextStyle,
              onChanged: (value) {},
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration.collapsed(
                hintText: 'Send a message...',
                hintStyle: kSmallerTextStyle.copyWith(color: Colors.blue[100]),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.send),
            iconSize: 25.0,
            color: Colors.blue[100],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          widget.user.name,
          style: kSmallTextStyle.copyWith(fontFamily: 'Rock Salt'),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_horiz),
            iconSize: 30.0,
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white70,
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
                    reverse: true,
                    padding: EdgeInsets.only(top: 15.0),
                    itemCount: messages.length,
                    itemBuilder: (BuildContext context, int index) {
                      final Messages message = messages[index];
                      final bool isMe = message.sender.id == me.id;
                      return _buildMessage(message, isMe);
                    },
                  ),
                ),
              ),
            ),
            _buildMessageComposer(),
          ],
        ),
      ),
    );
  }
}
