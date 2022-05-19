import 'package:chillax/ui/widgets/app_hate_message.dart';
import 'package:chillax/ui/widgets/app_obsecure_message.dart';
import 'package:chillax/ui/widgets/app_regular_message.dart';
import 'package:flutter/material.dart';

class AppMessage extends StatefulWidget {
  const AppMessage({
    Key? key,
    required this.isMyMessage,
    required this.message,
    required this.isHateSpeech,
    required this.defaultObsecure,
  }) : super(key: key);
  final bool isMyMessage;
  final String message;
  final bool isHateSpeech;
  final bool defaultObsecure;

  @override
  State<AppMessage> createState() => _AppMessageState(defaultObsecure);
}

class _AppMessageState extends State<AppMessage> {
  bool isObsecure;
  _AppMessageState(this.isObsecure);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => setState(() => isObsecure = !isObsecure),
      child: _buildBubble(),
    );
  }

  Widget _buildBubble() {
    if (_shouldObsecure) {
      return AppObsecureMessage(
        isMyMessage: widget.isMyMessage,
        message: widget.message,
      );
    }
    if (widget.isHateSpeech) {
      return AppHateMessage(
        isMyMessage: widget.isMyMessage,
        message: widget.message,
      );
    }

    return AppRegularMessage(
      isMyMessage: widget.isMyMessage,
      message: widget.message,
    );
  }

  bool get _shouldObsecure =>
      widget.isHateSpeech && widget.defaultObsecure && isObsecure;
}
