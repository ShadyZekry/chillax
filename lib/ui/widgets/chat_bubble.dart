import 'package:bubble/bubble.dart';
import 'package:chillax/resources/colors.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatefulWidget {
  const ChatBubble({
    Key? key,
    required this.isMyMessage,
    required this.message,
    required this.isHateSpeech,
    required this.isObsecured,
  }) : super(key: key);
  final bool isMyMessage;
  final String message;
  final bool isHateSpeech;
  final bool isObsecured;

  @override
  State<ChatBubble> createState() => _ChatBubbleState(isObsecured);
}

class _ChatBubbleState extends State<ChatBubble> {
  bool isObsecured;
  _ChatBubbleState(this.isObsecured);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: widget.isMyMessage
          ? AlignmentDirectional.centerStart
          : AlignmentDirectional.centerEnd,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: InkWell(
          onTap: () => setState(() {
            if (!widget.isHateSpeech) return;
            isObsecured = !isObsecured;
          }),
          child: Bubble(
            nip: widget.isMyMessage ? BubbleNip.leftTop : BubbleNip.rightTop,
            color: isObsecured
                ? Colors.red[900]
                : widget.isMyMessage
                    ? AppColors.blue1
                    : null,
            shadowColor: widget.isHateSpeech ? Colors.red : Colors.white,
            elevation: widget.isHateSpeech ? 5 : 3,
            borderColor: widget.isHateSpeech
                ? Colors.red[900]
                : widget.isMyMessage
                    ? Colors.white
                    : Colors.black,
            child: Text(
              isObsecured ? 'Hate Speech.\nTap to view' : widget.message,
              style: TextStyle(
                fontStyle: isObsecured ? FontStyle.italic : null,
                color: isObsecured
                    ? Colors.white
                    : widget.isMyMessage
                        ? Colors.white
                        : Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
