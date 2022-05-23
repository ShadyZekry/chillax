import 'package:chillax/models/message.dart';
import 'package:chillax/ui/widgets/obsecure_content.dart';
import 'package:flutter/material.dart';

import 'chat_bubble.dart';

class AppObsecureMessage extends StatelessWidget {
  const AppObsecureMessage({Key? key, required this.message}) : super(key: key);
  final Message message;

  @override
  Widget build(BuildContext context) {
    return ChatBubble(
      isMyMessage: message.isMyMessage,
      content: ObsecureContent(message: message),
      shadowElevation: 5,
      shadowColor: Colors.red,
      backgroundColor: Colors.red[900]!,
      messageColor: Colors.white,
      borderColor: Colors.red[900]!,
    );
  }
}
