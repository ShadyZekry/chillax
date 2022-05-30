import 'package:chillax/models/message.dart';
import 'package:chillax/resources/strings.dart';
import 'package:flutter/material.dart';

class ObsecureContent extends StatelessWidget {
  const ObsecureContent({Key? key, required this.message}) : super(key: key);

  final Message message;
  static final Map<int, String> _messageTypes = {
    1: Dictiornary.hsContent,
    2: Dictiornary.offContent,
    3: Dictiornary.inapContent,
    // 4: depression,
    5: Dictiornary.hsContent,
    6: Dictiornary.offContent,
    7: Dictiornary.inapContent,
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: message.isMyMessage
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.end,
      children: [
        Text(
          _messageTypes[message.status] ?? '',
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            Dictiornary.tapView,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 10,
              // fontWeight: FontWeight.w400,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ],
    );
  }
}
