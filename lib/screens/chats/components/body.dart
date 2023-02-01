// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:fifth_app/components/filled_outline_button.dart';
import 'package:fifth_app/constrants.dart';
import 'package:fifth_app/models/Chat.dart';
import 'package:fifth_app/screens/chats/components/chat_card.dart';
import 'package:fifth_app/screens/message/message_screen.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(
              kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
          color: kPrimaryColor,
          child: Row(
            children: [
              FillOutlineButton(press: () {}, text: "Recent Message"),
              SizedBox(width: kDefaultPadding),
              FillOutlineButton(
                press: () {},
                text: "Active",
                isFilled: false,
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: chatsData.length,
            itemBuilder: (context, index) => ChatCard(
              chat: chatsData[index],
              press: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MessageScreen())),
            ),
          ),
        ),
      ],
    );
  }
}
