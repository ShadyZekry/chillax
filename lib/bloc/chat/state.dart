import 'package:chillax/models/message.dart';
import 'package:flutter/cupertino.dart';

class ChatState {
  final List<Message> messages;
  final String myName;
  final TextEditingController messageController;

  const ChatState._internal(this.messages, this.myName, this.messageController);

  factory ChatState(
          {required List<Message> messages,
          required String myName,
          required TextEditingController messageController}) =>
      ChatState._internal(messages, myName, messageController);

  ChatState copyWith(
      {List<Message>? messages,
      String? myName,
      TextEditingController? messageController}) {
    return ChatState(
      messages: messages ?? this.messages,
      myName: myName ?? this.myName,
      messageController: messageController ?? this.messageController,
    );
  }
}
