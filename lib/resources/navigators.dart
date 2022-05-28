import 'package:flutter/material.dart';

class AppNavigators {
  static final GlobalKey<NavigatorState> maninNavigatorKey =
      GlobalKey<NavigatorState>();

  static NavigatorState? get maninNavigator => maninNavigatorKey.currentState;
}
