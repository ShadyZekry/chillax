import 'package:chillax/bloc/username/bloc.dart';
import 'package:chillax/bloc/username/events.dart';
import 'package:chillax/resources/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsernameField extends StatelessWidget {
  const UsernameField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      decoration: const BoxDecoration(
        borderRadius: BorderRadiusDirectional.only(
          bottomEnd: Radius.circular(40),
          topStart: Radius.circular(40),
        ),
        color: Color(0xFF3b8b6e),
      ),
      child: TextField(
        style: const TextStyle(color: Colors.white),
        textAlign: TextAlign.center,
        onSubmitted: (value) =>
            context.read<UsernameBloc>().add(UsernameEntered(value)),
        decoration: InputDecoration.collapsed(
          hintText: Dictiornary.enterUsername,
          hintStyle: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
