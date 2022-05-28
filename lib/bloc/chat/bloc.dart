import 'package:chillax/bloc/chat/events.dart';
import 'package:chillax/bloc/chat/states.dart';
import 'package:chillax/models/message.dart';
import 'package:chillax/services/chat.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc() : super(ChatState(messages: [], myName: '')) {
    on<ChatScreenLaunched>(_onChatScreenLaunch);
    on<SendMessageTapped>(_onSendMessageTap);
  }

  Future<void> _onChatScreenLaunch(
      ChatScreenLaunched event, Emitter emit) async {
    List<Message> messages = await ChatService.getAllMessages();
    ChatService.listenOnLastMessage((Message message) =>
        emit(state.copyWith(messages: messages..add(message))));

    emit(state.copyWith(messages: messages));
  }

  Future<void> _onSendMessageTap(SendMessageTapped event, Emitter emit) async {
    await ChatService.sendMessage(event.message);
  }
}
