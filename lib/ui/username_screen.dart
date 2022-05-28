import 'package:chillax/resources/colors.dart';
import 'package:chillax/resources/strings.dart';
import 'package:chillax/ui/widgets/username_field.dart';
import 'package:flutter/material.dart';

class UsernameScreen extends StatefulWidget {
  const UsernameScreen({Key? key}) : super(key: key);

  @override
  State<UsernameScreen> createState() => _UsernameScreenState();
}

class _UsernameScreenState extends State<UsernameScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.blue4,
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/images/pattern.png',
                repeat: ImageRepeat.repeat,
                color: Colors.white.withOpacity(0.15),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.chair, color: Colors.white, size: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      child: Text(
                        Dictiornary.chillax,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    const Icon(Icons.sms, color: Colors.white, size: 30),
                  ],
                ),
                Text(
                  Dictiornary.chillChat,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w100,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          Dictiornary.calledWhat,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        const UsernameField(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
