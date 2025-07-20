import 'package:flutter/material.dart';
import 'package:flutter_application_10/base screan.dart';
import 'package:flutter_application_10/signup_screen_content.dart';

class SignUpScreen extends StatelessWidget {
  final VoidCallback onSwitchToLogin;

  const SignUpScreen({super.key, required this.onSwitchToLogin});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      containerHeight: MediaQuery.of(context).size.height * 0.75,
      child: SignUpScreenContent(onSwitchToLogin: onSwitchToLogin),
    );
  }
}
