import 'package:chillax/models/message.dart';
import 'package:chillax/resources/colors.dart';
import 'package:flutter/material.dart';

import 'chat_bubble.dart';

class AppRegularMessage extends StatelessWidget {
  const AppRegularMessage({Key? key, required this.message}) : super(key: key);
  final Message message;

  @override
  Widget build(BuildContext context) {
    return ChatBubble(
      isMyMessage: message.isMyMessage,
      message: message.message,
      shadowElevation: 3,
      shadowColor: Colors.white,
      backgroundColor: message.isMyMessage ? AppColors.blue1 : null,
      messageColor: message.isMyMessage ? Colors.white : Colors.black,
      borderColor: message.isMyMessage ? Colors.white : Colors.black,
    );
  }
}
