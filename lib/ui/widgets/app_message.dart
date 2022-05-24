import 'package:chillax/models/message.dart';
import 'package:chillax/ui/widgets/app_depression_message.dart';
import 'package:chillax/ui/widgets/app_hate_message.dart';
import 'package:chillax/ui/widgets/app_obsecure_message.dart';
import 'package:chillax/ui/widgets/app_regular_message.dart';
import 'package:flutter/material.dart';

class AppMessage extends StatefulWidget {
  const AppMessage(
      {Key? key, required this.message, required this.defaultObsecure})
      : super(key: key);
  final Message message;
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
      return AppObsecureMessage(message: widget.message);
    }
    if (_isDepressionMessage) {
      return AppDepressionMessage(message: widget.message);
    }
    if (_isAbnormalMessage) {
      return AppSensitiveMessage(message: widget.message);
    }

    return AppRegularMessage(message: widget.message);
  }

  bool get _shouldObsecure =>
      _isAbnormalMessage && widget.defaultObsecure && isObsecure;
  bool get _isDepressionMessage => widget.message.status == 4;
  bool get _isAbnormalMessage =>
      widget.message.status != 0 && !_isDepressionMessage;
}
