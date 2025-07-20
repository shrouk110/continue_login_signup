import 'package:flutter/material.dart';
import 'package:flutter_application_10/app_colors.dart';
import 'package:flutter_application_10/app_string.dart';

class LoginScreenContent extends StatelessWidget {
  final VoidCallback onSwitchToSignUp;

  const LoginScreenContent({super.key, required this.onSwitchToSignUp});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppStrings.loginScreenWelcomeText,
          style: TextStyle(
            color: AppColors.whiteApp,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 50),

        TextField(
          decoration: InputDecoration(
            fillColor: AppColors.whiteApp,
            filled: true,
            labelText: AppStrings.loginScreenPhonenumberTextFiled,
            border: const OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 20),

        TextField(
          obscureText: true,
          decoration: InputDecoration(
            fillColor: AppColors.whiteApp,
            filled: true,
            labelText: AppStrings.loginScreenPasswordTextFiled,
            border: const OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 25),

        ElevatedButton(
          onPressed: () {},
          child: Text(
            AppStrings.loginButtonText,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 8, 1, 1),
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.whiteApp,
            minimumSize: const Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),

        const SizedBox(height: 15),

        GestureDetector(
          onTap: onSwitchToSignUp,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppStrings.noAccountText,
                style: TextStyle(color: AppColors.whiteBloc, fontSize: 16),
              ),
              const SizedBox(width: 5),
              Text(
                AppStrings.createAccountText,
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
