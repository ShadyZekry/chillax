class AppLinks {
  // Everything is https
  static const serverUrl = 'c36b-105-41-169-240.eu.ngrok.io';

  static const signalRHubName = '/chat';
  static const signalRUrl = 'https://$serverUrl/chat';

  static const apisMainRoute = '/Chillax';
  static const usernameApi = apisMainRoute + '/User';
  static const lastMessagesApi = apisMainRoute + '/Messages';
  static const sendMessageApi = apisMainRoute + '/Message';

  static const lastMessagesRoute = apisMainRoute + '/Messages';
}
