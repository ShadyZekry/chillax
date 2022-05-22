import 'package:chillax/bloc/chat/events.dart';
import 'package:chillax/bloc/chat/states.dart';
import 'package:chillax/models/message.dart';
import 'package:chillax/services/chat.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc() : super(ChatState(messages: [], myName: '')) {
    on<ChatScreenLaunched>(_onChatScreenLaunch);
  }

  Future<void> _onChatScreenLaunch(
      ChatScreenLaunched event, Emitter emit) async {
    List<Message> messages = await ChatService.getAllMessages();

    emit(state.copyWith(messages: messages));
  }
}
