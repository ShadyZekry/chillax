import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    Key? key,
    required this.isMyMessage,
    this.message,
    this.content,
    required this.messageColor,
    required this.borderColor,
    required this.backgroundColor,
    required this.shadowColor,
    required this.shadowElevation,
  }) : super(key: key);
  final bool isMyMessage;
  final String? message;
  final Widget? content;
  final Color messageColor;
  final Color borderColor;
  final Color? backgroundColor;
  final Color shadowColor;
  final double shadowElevation;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMyMessage
          ? AlignmentDirectional.centerStart
          : AlignmentDirectional.centerEnd,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Bubble(
          nip: isMyMessage ? BubbleNip.rightTop : BubbleNip.leftTop,
          color: backgroundColor,
          shadowColor: shadowColor,
          elevation: shadowElevation,
          borderColor: borderColor,
          child: content ??
              Text(
                message ?? '',
                style: TextStyle(
                  color: messageColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
        ),
      ),
    );
  }
}
