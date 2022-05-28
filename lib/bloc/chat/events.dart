abstract class ChatEvent {}

class ChatScreenLaunched extends ChatEvent {}

class SendMessageTapped extends ChatEvent {
  final String message;
  SendMessageTapped(this.message);
}
