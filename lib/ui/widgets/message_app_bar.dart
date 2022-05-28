import 'package:chillax/bloc/chat/bloc.dart';
import 'package:chillax/bloc/chat/events.dart';
import 'package:chillax/resources/colors.dart';
import 'package:chillax/resources/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MessageAppBar extends StatelessWidget {
  const MessageAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      color: Colors.white,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: TextField(
              controller: messageContent(context),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: Dictiornary.typeMessage,
                hintStyle: const TextStyle(color: Colors.grey),
              ),
            ),
          ),
          IconButton(
            onPressed: () => context
                .read<ChatBloc>()
                .add(SendMessageTapped(messageContent(context).text)),
            icon: const Icon(Icons.send_rounded, color: AppColors.blue1),
          ),
        ],
      ),
    );
  }

  TextEditingController messageContent(BuildContext context) =>
      context.read<ChatBloc>().state.messageController;
}
