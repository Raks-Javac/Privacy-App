import 'package:blur_app/privacy_screen/privacy_abst.dart';
import 'package:blur_app/privacy_screen/privacy_view.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: NavigatorKey.appNavigatorKey,
      home: const PrivacySecureView(child: FirstRoute()),
    );
  }
}

class FirstRoute extends StatefulWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  State<FirstRoute> createState() => _FirstRouteState();
}

class _FirstRouteState extends State<FirstRoute> {
  List<String> lifeCycleHistory = [];

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    //this line activates the privacy screen

    super.initState();
    PrivacyImplementation.instance.activateSecurePrivacy();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Privacy Screen Minimized Android & iOs'),
        ),
        body: const Column(
          children: [],
        ));
  }
}
