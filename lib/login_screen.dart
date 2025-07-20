import 'package:flutter/material.dart';
import 'package:flutter_application_10/base screan.dart';
import 'package:flutter_application_10/login_screen_conent.dart';

class LoginScreen extends StatelessWidget {
  final VoidCallback onSwitchToSignUp;

  const LoginScreen({super.key, required this.onSwitchToSignUp});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      containerHeight: 400,
      child: LoginScreenContent(onSwitchToSignUp: onSwitchToSignUp),
    );
  }
}
