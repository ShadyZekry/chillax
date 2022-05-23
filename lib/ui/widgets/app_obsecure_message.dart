import 'package:chillax/models/message.dart';
import 'package:chillax/resources/strings.dart';
import 'package:flutter/material.dart';

import 'chat_bubble.dart';

class AppObsecureMessage extends StatelessWidget {
  static final Map<int, String> _messageTypes = {
    1: Dictiornary.hsContent,
    2: Dictiornary.offContent,
    3: Dictiornary.inapContent,
    4: "depression",
  };

  const AppObsecureMessage({Key? key, required this.message}) : super(key: key);
  final Message message;

  @override
  Widget build(BuildContext context) {
    return ChatBubble(
      isMyMessage: message.isMyMessage,
      message: _messageTypes[message.status] ?? '',
      shadowElevation: 5,
      shadowColor: Colors.red,
      backgroundColor: Colors.red[900]!,
      messageColor: Colors.white,
      borderColor: Colors.red[900]!,
    );
  }
}
