import 'package:chillax/resources/colors.dart';
import 'package:flutter/material.dart';

import 'chat_bubble.dart';

class AppRegularMessage extends StatelessWidget {
  const AppRegularMessage(
      {Key? key, required this.isMyMessage, required this.message})
      : super(key: key);
  final bool isMyMessage;
  final String message;

  @override
  Widget build(BuildContext context) {
    return ChatBubble(
      isMyMessage: isMyMessage,
      message: message,
      shadowElevation: 3,
      shadowColor: Colors.white,
      backgroundColor: isMyMessage ? AppColors.blue1 : null,
      messageColor: isMyMessage ? Colors.white : Colors.black,
      borderColor: isMyMessage ? Colors.white : Colors.black,
    );
  }
}
