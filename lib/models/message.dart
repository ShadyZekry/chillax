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

  factory Message._fromJson(Map<String, dynamic> json) {
    return Message(
      message: json['message'],
      senderName: json['userName'],
      // dateTime: DateTime.parse(json['dateTime']),
      status: json['status'],
    );
  }

  static List<Message> parse(List<dynamic> body) {
    return body.map((json) => Message._fromJson(json)).toList();
  }

  bool get isMyMessage => senderName == 'shady';
}
