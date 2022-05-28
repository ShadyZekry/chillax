import 'package:chillax/models/message.dart';
import 'package:chillax/resources/strings.dart';
import 'package:chillax/ui/widgets/chat_bubble.dart';
import 'package:flutter/material.dart';

class AppDepressionMessage extends StatelessWidget {
  const AppDepressionMessage({Key? key, required this.message})
      : super(key: key);
  final Message message;

  @override
  Widget build(BuildContext context) {
    return ChatBubble(
      isMyMessage: message.isMyMessage,
      content: Column(
        crossAxisAlignment: message.isMyMessage
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.end,
        children: [
          Text(
            message.message,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              Dictiornary.signsOfDepression,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 11,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ],
      ),
      shadowElevation: 5,
      shadowColor: Colors.purple[800]!,
      backgroundColor:
          message.isMyMessage ? Colors.purple[800] : Colors.purple[800],
      messageColor: message.isMyMessage ? Colors.white : Colors.white,
      borderColor: message.isMyMessage ? Colors.purple : Colors.purple,
    );
  }
}
