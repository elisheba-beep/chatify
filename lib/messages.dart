import 'user.dart';

import 'package:flutter/material.dart';

class Messages {
  final User sender;
  String time;
  String text;
  bool isLiked;
  bool unRead;

  Messages(
      {this.sender, this.time, @required this.text, this.isLiked, this.unRead});
}

//me
final User me = User(
  id: 0,
  name: 'Tomiwa',
  imageUrl: 'images/teallogo.png',
);

//other users
final User Emmanuel =
    User(id: 1, name: 'Emmanuel', imageUrl: 'images/emmanuel.jpg');

final User Isaac = User(id: 2, name: 'Isaac', imageUrl: 'images/isaac.jpg');

final User Marco = User(id: 3, name: 'Marco', imageUrl: 'images/marco.jpg');

final User Thomas = User(id: 4, name: 'Thomas', imageUrl: 'images/thomas.jpg');

final User Zuleyka =
    User(id: 5, name: 'Zuleyka', imageUrl: 'images/zuleyka.jpg');

//recent updates
List<User> recentUpdates = [Zuleyka, Isaac, Thomas, Marco, Emmanuel];

//messages

List<Messages> chats = [
  Messages(
    sender: Thomas,
    time: '2:52pm',
    text: 'You done with that project?',
    isLiked: false,
    unRead: true,
  ),
  Messages(
    sender: Zuleyka,
    time: '2:30pm',
    text: 'Hey, we need to talk',
    isLiked: false,
    unRead: true,
  ),
  Messages(
    sender: Emmanuel,
    time: '1:05pm',
    text: 'Ill see you later then',
    isLiked: true,
    unRead: false,
  ),
  Messages(
    sender: Marco,
    time: '12:22pm',
    text: 'Have you heard from Ella',
    isLiked: false,
    unRead: true,
  ),
  Messages(
    sender: Isaac,
    time: '11:57am',
    text: 'How are you doing?',
    isLiked: true,
    unRead: false,
  ),
];

List<Messages> messages = [
  Messages(
    sender: Emmanuel,
    time: '1:05pm',
    text: 'Ill see you later then',
    isLiked: true,
    unRead: false,
  ),
  Messages(
    sender: me,
    time: '1:00pm',
    text: 'Naa, Im going for a party in about an hour',
    isLiked: false,
    unRead: false,
  ),
  Messages(
    sender: Emmanuel,
    time: '11.45pm',
    text: 'Would you like to come?',
    isLiked: false,
    unRead: false,
  ),
  Messages(
    sender: Emmanuel,
    time: '11.43pm',
    text: 'Im going for a fundraiser around 3pm',
    isLiked: false,
    unRead: false,
  ),
  Messages(
    sender: me,
    time: '10.02pm',
    text: 'Just woke up actually',
    isLiked: false,
    unRead: false,
  ),
  Messages(
    sender: Emmanuel,
    time: '9.50pm',
    text: 'What about you?',
    isLiked: false,
    unRead: false,
  ),
];
