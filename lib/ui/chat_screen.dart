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
            ChatBubble(isMyMessage: true),
            ChatBubble(isMyMessage: false),
          ],
        ),
      ),
    );
  }
}
