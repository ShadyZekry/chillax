import 'package:flutter/material.dart';

import 'chat_bubble.dart';

class AppObsecureMessage extends StatelessWidget {
  const AppObsecureMessage(
      {Key? key, required this.isMyMessage, required this.message})
      : super(key: key);
  final bool isMyMessage;
  final String message;

  @override
  Widget build(BuildContext context) {
    return ChatBubble(
      isMyMessage: isMyMessage,
      message: 'Hate Speech.\nTap to view',
      shadowElevation: 5,
      shadowColor: Colors.red,
      backgroundColor: Colors.red[900]!,
      messageColor: Colors.white,
      borderColor: Colors.red[900]!,
    );
  }
}
