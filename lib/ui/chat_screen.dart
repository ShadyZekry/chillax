import 'package:chillax/bloc/chat/bloc.dart';
import 'package:chillax/bloc/chat/events.dart';
import 'package:chillax/bloc/chat/states.dart';
import 'package:chillax/models/message.dart';
import 'package:chillax/resources/colors.dart';
import 'package:chillax/resources/strings.dart';
import 'package:chillax/ui/widgets/app_message.dart';
import 'package:chillax/ui/widgets/message_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  bool _shouldObsecure = true;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: AppColors.blue1,
        drawer: Drawer(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(child: Text(Dictiornary.hateSpeech)),
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Switch(
                          value: _shouldObsecure,
                          onChanged: (value) =>
                              setState(() => _shouldObsecure = value),
                          activeColor: Colors.red[900]!,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: IconButton(
                        onPressed: () =>
                            _scaffoldKey.currentState?.openDrawer(),
                        icon: const Icon(Icons.menu, color: Colors.white),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Text(
                      Dictiornary.generalRoom,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: AppColors.blue5,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.asset(
                        'assets/images/pattern.png',
                        repeat: ImageRepeat.repeat,
                        color: Colors.white.withOpacity(0.15),
                      ),
                    ),
                    BlocProvider(
                      create: (context) =>
                          ChatBloc()..add(ChatScreenLaunched()),
                      child: BlocBuilder<ChatBloc, ChatState>(
                        builder: (_, state) => ListView.builder(
                          itemCount: state.messages.length,
                          itemBuilder: (BuildContext context, int index) {
                            final Message message = state.messages[index];
                            return AppMessage(
                              message: message,
                              defaultObsecure: _shouldObsecure,
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            BlocProvider(
              create: (context) => ChatBloc(),
              child: const MessageAppBar(),
            ),
          ],
        ),
      ),
    );
  }
}
