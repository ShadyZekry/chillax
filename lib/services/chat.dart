import 'package:chillax/models/message.dart';
import 'package:signalr_netcore/signalr_client.dart';
import 'package:http/http.dart' as http;

class ChatService {
  static const serverUrl = 'https://c894-105-35-87-62.eu.ngrok.io';
  static const apisUrl = serverUrl + '/Chillax';
  static const lastMessagesApi = apisUrl + '/Messages';

  static Future<List<Message>> getAllMessages() async {
    var client = http.Client();
    try {
      var url = Uri.parse(apisUrl);
      http.Response response = await http.get(url, headers: {
        'Accept': 'application/json',
        'pageIndex': '0',
        'pageSize': '100',
      });

      print(response.body);

      // await http.read(Uri.parse('https://example.com/foobar.txt'));
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
    } finally {
      client.close();
    }
  }

  static Future<void> listenOnLastMessage() async {
    final serverUrl = "https://c894-105-35-87-62.eu.ngrok.io/chat";
    final hubConnection = HubConnectionBuilder().withUrl(serverUrl).build();
    await hubConnection.start();
    // await hubConnection.('Send', args: ["name", "message", 1]);
    hubConnection.on("Send", (abc) => print(abc));
  }
}
