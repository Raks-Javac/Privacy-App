import 'dart:developer';

import 'package:blur_app/privacy_screen/privacy_abst.dart';
import 'package:flutter/material.dart';
import 'package:privacy_screen/privacy_screen.dart';

class PrivacySecureView extends StatelessWidget {
  final Widget child;
  const PrivacySecureView({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return PrivacyGate(
      navigatorKey: NavigatorKey.appNavigatorKey,
      onLifeCycleChanged: (value) => log(value.toString()),
      onLock: () => log("App locked"),
      onUnlock: () => log("App Unlocked"),
      child: child,
    );
  }
}
