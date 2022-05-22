import 'package:chillax/bloc/chat/bloc.dart';
import 'package:chillax/bloc/chat/events.dart';
import 'package:chillax/resources/colors.dart';
import 'package:chillax/ui/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: AppColors.blue1));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Montserrat'),
      home: BlocProvider(
        create: (context) => ChatBloc()..add(ChatScreenLaunched()),
        child: const ChatScreen(),
      ),
    );
  }
}
