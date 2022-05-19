import 'package:chillax/resources/colors.dart';
import 'package:chillax/resources/strings.dart';
import 'package:chillax/ui/widgets/app_message.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);
  final bool _shouldObsecure = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.blue1,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                Dictiornary.generalRoom,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
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
                    Column(
                      children: [
                        AppMessage(
                          isMyMessage: true,
                          message: 'abc',
                          isHateSpeech: false,
                          defaultObsecure: _shouldObsecure,
                        ),
                        AppMessage(
                          isMyMessage: false,
                          message: 'abc',
                          isHateSpeech: false,
                          defaultObsecure: _shouldObsecure,
                        ),
                        AppMessage(
                          isMyMessage: true,
                          message: 'abc',
                          isHateSpeech: true,
                          defaultObsecure: _shouldObsecure,
                        ),
                        AppMessage(
                          isMyMessage: false,
                          message: 'a',
                          isHateSpeech: true,
                          defaultObsecure: _shouldObsecure,
                        ),
                        AppMessage(
                          isMyMessage: false,
                          message: 'a',
                          isHateSpeech: true,
                          defaultObsecure: _shouldObsecure,
                        ),
                        AppMessage(
                          isMyMessage: false,
                          message: 'a',
                          isHateSpeech: true,
                          defaultObsecure: _shouldObsecure,
                        ),
                        AppMessage(
                          isMyMessage: true,
                          message: 'a',
                          isHateSpeech: true,
                          defaultObsecure: _shouldObsecure,
                        ),
                        AppMessage(
                          isMyMessage: true,
                          message: 'a',
                          isHateSpeech: true,
                          defaultObsecure: _shouldObsecure,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            _buildBottomAppBar()
          ],
        ),
      ),
    );
  }

  Widget _buildBottomAppBar() {
    return Container(
      padding: const EdgeInsets.all(8),
      color: Colors.white,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: Dictiornary.typeMessage,
                hintStyle: const TextStyle(color: Colors.grey),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.send_rounded, color: AppColors.blue1),
          ),
        ],
      ),
    );
  }
}
