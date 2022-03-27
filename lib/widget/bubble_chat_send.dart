import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_9.dart';

import '../theme/font.dart';

class BubbleChatSend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChatBubble(
      clipper: ChatBubbleClipper9(type: BubbleType.sendBubble),
      alignment: Alignment.topRight,
      margin: EdgeInsets.symmetric(
        vertical: 3,
        horizontal: 10,
      ),
      backGroundColor: Color.fromRGBO(3, 85, 71, 1),
      shadowColor: Color.fromRGBO(0, 0, 0, 0),
      child: Container(
        padding: EdgeInsets.all(3),
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.7,
        ),
        child: Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
          style: SenderText,
        ),
      ),
    );
  }
}
