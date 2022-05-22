import 'package:chillax/models/message.dart';
import 'package:signalr_netcore/signalr_client.dart';

class ChatService {
  static Future<List<Message>> getAllMessages() async {
    return Future.delayed(
      const Duration(seconds: 1),
      () {
        return [
          Message(
            senderName: 'me',
            message: 'Hello',
            status: 1,
          ),
          Message(
            senderName: 'me',
            message: 'Hello',
            status: 1,
          ),
          Message(
            senderName: 'me',
            message: 'Hello',
            status: 1,
          ),
          Message(
            senderName: 'me',
            message: 'Hello',
            status: 1,
          ),
          Message(
            senderName: 'me',
            message: 'Hello',
            status: 1,
          ),
        ];
      },
    );
  }

}
