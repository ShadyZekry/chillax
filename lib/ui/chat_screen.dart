import 'dart:math';

import 'package:chillax/resources/colors.dart';
import 'package:chillax/ui/widgets/chat_bubble.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.blue5,
        body: Column(
          children: [
            Expanded(
              child: Column(
                children: const [
                  ChatBubble(isMyMessage: true),
                  ChatBubble(isMyMessage: false),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.white,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                  Transform.rotate(
                    angle: -30 * pi / 180,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.send_rounded,
                          color: AppColors.blue1),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
