import 'package:bubble/bubble.dart';
import 'package:chillax/resources/colors.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble(
      {Key? key,
      required this.isMyMessage,
      required this.message,
      required this.isHateSpeech})
      : super(key: key);
  final bool isMyMessage;
  final String message;
  final isHateSpeech;

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
          shadowColor: isHateSpeech ? Colors.red : Colors.white,
          elevation: isHateSpeech ? 10 : 3,
          borderColor: isHateSpeech
              ? Colors.deepOrange
              : isMyMessage
                  ? Colors.white
                  : Colors.black,
          child: Text(
            message,
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
