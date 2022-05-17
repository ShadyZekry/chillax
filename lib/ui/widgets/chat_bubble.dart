import 'package:bubble/bubble.dart';
import 'package:chillax/resources/colors.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({Key? key, required this.isMyMessage}) : super(key: key);
  final bool isMyMessage;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMyMessage
          ? AlignmentDirectional.centerStart
          : AlignmentDirectional.centerEnd,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Bubble(
          nip: isMyMessage ? BubbleNip.leftTop : BubbleNip.rightTop,
          color: isMyMessage ? AppColors.blue1 : null,
          borderColor: isMyMessage ? Colors.white : Colors.black,
          child: Text(
            'dsjlk',
            style: TextStyle(
              color: isMyMessage ? Colors.white : Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
