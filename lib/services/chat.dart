import 'dart:convert';

import 'package:chillax/models/message.dart';
import 'package:signalr_netcore/signalr_client.dart';
import 'package:http/http.dart' as http;

class ChatService {
  static const serverUrl = 'http://a2fd-105-183-10-47.ngrok.io';

  static const apisUrl = serverUrl + '/Chillax';
  static const lastMessagesApi = apisUrl + '/Messages';

  static const signalRHubName = '/chat';
  static const signalRUrl = serverUrl + '/chat';

  static Future<List<Message>> getAllMessages() async {
    var client = http.Client();
    try {
      // var url = Uri.parse(lastMessagesApi);
      // http.Response response = await http.get(url, headers: {
      //   'Accept': 'application/json',
      //   'pageIndex': '0',
      //   'pageSize': '100',
      // });
      // print(response.body);
      // final List<Message> messages = Message.parse(jsonDecode(response.body));
      String response = '''
[
	{
		"userName": "fady",
		"message": "message",
		"status": 0
	},
	{
		"userName": "fady",
		"message": "hate",
		"status": 1
	},
	{
		"userName": "fady",
		"message": "message",
		"status": 1
	},
	{
		"userName": "fady",
		"message": "to",
		"status": 2
	},
	{
		"userName": "fady",
		"message": "shady",
		"status": 3
	},
	{
		"userName": "shady",
		"message": "message",
		"status": 0
	},
	{
		"userName": "shady",
		"message": "hate",
		"status": 1
	},
	{
		"userName": "shady",
		"message": "message",
		"status": 1
	},
	{
		"userName": "shady",
		"message": "to",
		"status": 2
	},
	{
		"userName": "shady",
		"message": "shady",
		"status": 3
	},
	{
		"userName": "shady",
		"message": "I'm going to kill myself 🤡",
		"status": 4
	},
	{
		"userName": "fady",
		"message": "Suffering from tasks 🤕",
		"status": 4
	}
]
      ''';
      final List<Message> messages = Message.parse(jsonDecode(response));
      return messages;
    } finally {
      client.close();
    }
  }

  static Future<void> listenOnLastMessage() async {
    final hubConnection = HubConnectionBuilder().withUrl(signalRUrl).build();
    await hubConnection.start();
    // await hubConnection.('Send', args: ["name", "message", 1]);
    hubConnection.on("Send", (abc) => print(abc));
  }
}
