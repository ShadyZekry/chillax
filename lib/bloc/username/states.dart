import 'package:chillax/models/message.dart';

class UsernameState {
  final List<Message> messages;
  final String myName;

  UsernameState._internal(this.messages, this.myName);

  factory UsernameState(
          {required List<Message> messages, required String myName}) =>
      UsernameState._internal(messages, myName);

  UsernameState copyWith({List<Message>? messages, String? myName}) {
    return UsernameState(
      messages: messages ?? this.messages,
      myName: myName ?? this.myName,
    );
  }
}
