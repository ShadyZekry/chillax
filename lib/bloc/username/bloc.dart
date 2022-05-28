import 'package:chillax/bloc/username/events.dart';
import 'package:chillax/bloc/username/states.dart';
import 'package:chillax/resources/navigators.dart';
import 'package:chillax/services/chat.dart';
import 'package:chillax/ui/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsernameBloc extends Bloc<UsernameEvent, UsernameState> {
  UsernameBloc() : super(UsernameState(messages: [], myName: ''));

  void usernameSubmitted(String username) {
    if (username.isEmpty) return;

    ChatService.username = username;
    AppNavigators.maninNavigator
        ?.push(MaterialPageRoute(builder: (_) => const ChatScreen()));
  }
}
