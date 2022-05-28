import 'package:chillax/bloc/chat/bloc.dart';
import 'package:chillax/bloc/chat/events.dart';
import 'package:chillax/resources/colors.dart';
import 'package:chillax/resources/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MessageAppBar extends StatelessWidget {
  MessageAppBar({Key? key}) : super(key: key);
  final TextEditingController _controller = TextEditingController();

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
              controller: _controller,
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
                .add(SendMessageTapped(_controller.text)),
            icon: const Icon(Icons.send_rounded, color: AppColors.blue1),
          ),
        ],
      ),
    );
  }
}
