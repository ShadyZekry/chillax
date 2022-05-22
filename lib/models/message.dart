class Message {
  final String message;
  final String senderName;
  // final DateTime dateTime;
  final int status;

  Message({
    required this.message,
    required this.senderName,
    // required this.dateTime,
    required this.status,
  });

  bool get IsMyMessage => senderName == 'me';
}
