import 'package:chillax/bloc/chat/events.dart';
import 'package:chillax/bloc/chat/state.dart';
import 'package:chillax/models/message.dart';
import 'package:chillax/services/chat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  static final ChatBloc instance = ChatBloc();

  ChatBloc()
      : super(ChatState(
            messages: const [],
            myName: '',
            messageController: TextEditingController())) {
    ChatService.listenOnLastMessage((Message message) {
      print(message);
      emit(state.copyWith(messages: state.messages..add(message)));
    });
    on<ChatScreenLaunched>(_onChatScreenLaunch);
    on<SendMessageTapped>(_onSendMessageTap);
  }

  Future<void> _onChatScreenLaunch(
      ChatScreenLaunched event, Emitter emit) async {
    List<Message> messages = await ChatService.getAllMessages();
    emit(state.copyWith(messages: messages));
  }

  Future<void> _onSendMessageTap(SendMessageTapped event, Emitter emit) async {
    await ChatService.sendMessage(event.message);
    state.messageController.text = '';
  }
}
