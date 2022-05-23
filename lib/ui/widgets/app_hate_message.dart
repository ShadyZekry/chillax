import 'package:chillax/models/message.dart';
import 'package:chillax/resources/colors.dart';
import 'package:chillax/ui/widgets/chat_bubble.dart';
import 'package:flutter/material.dart';

class AppSensitiveMessage extends StatelessWidget {
  const AppSensitiveMessage({Key? key, required this.message})
      : super(key: key);
  final Message message;

  @override
  Widget build(BuildContext context) {
    return ChatBubble(
      isMyMessage: message.isMyMessage,
      message: message.message,
      shadowElevation: 5,
      shadowColor: Colors.red[900]!,
      backgroundColor: message.isMyMessage ? AppColors.blue1 : null,
      messageColor: message.isMyMessage ? Colors.white : Colors.black,
      borderColor: message.isMyMessage ? Colors.red[900]! : Colors.black,
    );
  }
}
