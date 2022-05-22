import 'package:chillax/models/message.dart';

class ChatState {
  final List<Message> messages;
  final String myName;

  ChatState._internal(this.messages, this.myName);

  factory ChatState(
          {required List<Message> messages, required String myName}) =>
      ChatState._internal(messages, myName);

  ChatState copyWith({List<Message>? messages, String? myName}) {
    return ChatState(
      messages: messages ?? this.messages,
      myName: myName ?? this.myName,
    );
  }
}
