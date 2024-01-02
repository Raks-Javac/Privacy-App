import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:privacy_screen/privacy_screen.dart';

abstract class IPrivacyImplementation {
  Future<void> activateSecurePrivacy();
}

class PrivacyImplementation implements IPrivacyImplementation {
  PrivacyImplementation._();

  static PrivacyImplementation instance = PrivacyImplementation._();

  factory PrivacyImplementation() {
    return instance;
  }

  @override
  activateSecurePrivacy() async {
    final result = await PrivacyScreen.instance.enable(
      iosOptions: const PrivacyIosOptions(
        enablePrivacy: true,
        privacyImageName: "LaunchImage",
        autoLockAfterSeconds: 1,
        lockTrigger: IosLockTrigger.didEnterBackground,
      ),
      androidOptions: const PrivacyAndroidOptions(
        enableSecure: true,
        autoLockAfterSeconds: 1,
      ),
      backgroundColor: Colors.white.withOpacity(0),
      blurEffect: PrivacyBlurEffect.light,
    );

    if (result == true) {
      log("Privacy Screen activated Successfully");
    } else {
      log("Privacy Screen activation failed");
    }
  }
}

class NavigatorKey {
  /// Key used by our app-level navigator
  static GlobalKey<NavigatorState> appNavigatorKey =
      GlobalKey<NavigatorState>();
}
