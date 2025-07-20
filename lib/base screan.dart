import 'package:flutter/material.dart';
import 'package:flutter_application_10/app_colors.dart';

class BaseScreen extends StatelessWidget {
  final Widget child;
  final double containerHeight;

  const BaseScreen({
    super.key,
    required this.child,
    this.containerHeight = 400,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteApp,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/boy.png',
              height: MediaQuery.of(context).size.height - containerHeight,
              fit: BoxFit.cover,
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: containerHeight,
              decoration: BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: child,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
