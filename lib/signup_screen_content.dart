import 'package:flutter/material.dart';
import 'package:flutter_application_10/app_colors.dart';
import 'package:flutter_application_10/app_string.dart';

class SignUpScreenContent extends StatelessWidget {
  final VoidCallback onSwitchToLogin;

  const SignUpScreenContent({super.key, required this.onSwitchToLogin});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppStrings.signUpWelcomeText,
          style: TextStyle(
            color: AppColors.whiteApp,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 30),

        TextField(
          decoration: InputDecoration(
            fillColor: AppColors.whiteApp,
            filled: true,
            labelText: AppStrings.signUpNameText,
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 15),

        TextField(
          decoration: InputDecoration(
            fillColor: AppColors.whiteApp,
            filled: true,
            labelText: AppStrings.signUpEmailText,
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 15),

        TextField(
          decoration: InputDecoration(
            fillColor: AppColors.whiteApp,
            filled: true,
            labelText: AppStrings.signUpPhoneText,
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 15),

        TextField(
          obscureText: true,
          decoration: InputDecoration(
            fillColor: AppColors.whiteApp,
            filled: true,
            labelText: AppStrings.signUpPasswordText,
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 15),

        TextField(
          obscureText: true,
          decoration: InputDecoration(
            fillColor: AppColors.whiteApp,
            filled: true,
            labelText: AppStrings.signUpConfirmPasswordText,
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 25),

        ElevatedButton(
          onPressed: () {},
          child: Text(
            AppStrings.loginButtonText,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.whiteApp,
            minimumSize: const Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // مستطيل بحواف ناعمة
            ),
          ),
        ),

        SizedBox(height: 15),

        GestureDetector(
          onTap: onSwitchToLogin,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppStrings.alreadyHaveAccount,
                style: TextStyle(color: AppColors.whiteBloc, fontSize: 16),
              ),
              SizedBox(width: 5),
              Text(
                AppStrings.loginInstead,
                style: TextStyle(
                  color: AppColors.whiteApp,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
