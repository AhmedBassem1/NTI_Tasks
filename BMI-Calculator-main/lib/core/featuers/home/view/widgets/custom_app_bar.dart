import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final bool showBackButton;
  final VoidCallback? onBackPressed;

  const CustomAppBar({
    super.key,
    this.showBackButton = false,
    this.onBackPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (showBackButton)
          IconButton(
            onPressed: onBackPressed,
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 25,
              color: Color(0xFF65B741),
            ),
          )
        else
          const SizedBox(width: 25),
        Expanded(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "BMI",
                style: TextStyle(
                  fontSize: 28,
                  color: Color(0xFFFFB534),
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(width: 5),
              const Text(
                "Calculator",
                style: TextStyle(
                  fontSize: 28,
                  color: Color(0xFF65B741),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 25),
      ],
    );
  }
}