import 'package:chillax/resources/colors.dart';
import 'package:chillax/ui/widgets/chat_bubble.dart';
import 'package:flutter/material.dart';

class AppHateMessage extends StatelessWidget {
  const AppHateMessage(
      {Key? key, required this.isMyMessage, required this.message})
      : super(key: key);
  final bool isMyMessage;
  final String message;

  @override
  Widget build(BuildContext context) {
    return ChatBubble(
      isMyMessage: isMyMessage,
      message: message,
      shadowElevation: 5,
      shadowColor: Colors.red[900]!,
      backgroundColor: isMyMessage ? AppColors.blue1 : null,
      messageColor: isMyMessage ? Colors.white : Colors.black,
      borderColor: isMyMessage ? Colors.red[900]! : Colors.black,
    );
  }
}
