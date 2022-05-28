import 'dart:convert';

import 'package:chillax/models/message.dart';
import 'package:chillax/resources/links.dart';
import 'package:signalr_netcore/signalr_client.dart';
import 'package:http/http.dart' as http;

class ChatService {
  static String username = '';

  static Future<void> registerUsername(String username) async {
    var url = Uri.parse(AppLinks.usernameApi);
    http.Response response = await http.post(
      url,
      headers: {'Accept': 'application/json'},
      body: {'userName': username},
    );
    print(response.body);
  }

  static Future<List<Message>> getAllMessages() async {
    http.Client client = http.Client();
    try {
      var url = Uri.https(
        AppLinks.serverUriOnly,
        AppLinks.lastMessagesRoute,
        {'pageIndex': '1', 'pageSize': '1000'},
      );
      http.Response response =
          await http.get(url, headers: {'Accept': 'application/json'});
      print(response.body);
      final List<Message> messages = Message.parse(jsonDecode(response.body));
//       String response = '''
// [
// 	{
// 		"userName": "fady",
// 		"message": "message",
// 		"status": 0
// 	},
// 	{
// 		"userName": "fady",
// 		"message": "hate",
// 		"status": 1
// 	},
// 	{
// 		"userName": "fady",
// 		"message": "message",
// 		"status": 1
// 	},
// 	{
// 		"userName": "fady",
// 		"message": "to",
// 		"status": 2
// 	},
// 	{
// 		"userName": "fady",
// 		"message": "shady",
// 		"status": 3
// 	},
// 	{
// 		"userName": "shady",
// 		"message": "message",
// 		"status": 0
// 	},
// 	{
// 		"userName": "shady",
// 		"message": "hate",
// 		"status": 1
// 	},
// 	{
// 		"userName": "shady",
// 		"message": "message",
// 		"status": 1
// 	},
// 	{
// 		"userName": "shady",
// 		"message": "to",
// 		"status": 2
// 	},
// 	{
// 		"userName": "shady",
// 		"message": "shady",
// 		"status": 3
// 	},
// 	{
// 		"userName": "shady",
// 		"message": "I'm going to kill myself 🤡",
// 		"status": 4
// 	},
// 	{
// 		"userName": "fady",
// 		"message": "Suffering from tasks 🤕",
// 		"status": 4
// 	}
// ]
//       ''';
      // final List<Message> messages = Message.parse(jsonDecode(response));
      return messages;
    } finally {
      client.close();
    }
  }

  static Future<void> listenOnLastMessage(
      void Function(Message) onNewMessage) async {
    final hubConnection =
        HubConnectionBuilder().withUrl(AppLinks.signalRUrl).build();
    await hubConnection.start();
    hubConnection.on(
      "Send",
      (messageMap) => onNewMessage(
        Message(
          message: (messageMap?.first as Map)['message'],
          senderName: (messageMap?.first as Map)['userName'],
          status: (messageMap?.first as Map)['status'],
        ),
      ),
    );
  }

  static Future<void> sendMessage(String message) async {
    http.Client client = http.Client();
    try {
      var url = Uri.parse(AppLinks.sendMessageApi);
      http.Response response = await http.post(
        url,
        headers: {'Accept': 'application/json'},
        body: {'userName': ChatService.username, 'message': message},
      );
      print(response.body);
    } finally {
      client.close();
    }
  }
}
