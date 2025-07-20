import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SwitchPage(),
    );
  }
}

class SwitchPage extends StatefulWidget {
  const SwitchPage({super.key});

  @override
  State<SwitchPage> createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {
  int pageIndex = 0;

  void goToLogin() {
    setState(() {
      pageIndex = 0;
    });
  }

  void goToSignUp() {
    setState(() {
      pageIndex = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    switch (pageIndex) {
      case 0:
        return LoginScreen(onSwitchToSignUp: goToSignUp);
      case 1:
        return SignUpScreen(onSwitchToLogin: goToLogin);
      default:
        return const Center(child: Text("Unknown page"));
    }
  }
}

