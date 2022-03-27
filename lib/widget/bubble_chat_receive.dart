import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_9.dart';

import '../theme/font.dart';

class BubbleChatReceive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChatBubble(
      clipper: ChatBubbleClipper9(type: BubbleType.receiverBubble),
      alignment: Alignment.topLeft,
      margin: EdgeInsets.symmetric(
        vertical: 3,
        horizontal: 10,
      ),
      backGroundColor: Colors.white70,
      shadowColor: Color.fromRGBO(0, 0, 0, 0),
      child: Container(
        padding: EdgeInsets.all(3),
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.7,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Shizuka",
              style: SenderName,
            ),
            SizedBox(height: 4),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
              style: ReceiverText,
            ),
          ],
        ),
      ),
    );
  }
}
