import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/action_button.dart';
import '../widgets/bmi_result.dart';

class ResultScreen extends StatelessWidget {
  final String gender;
  final int weight;
  final int age;
  final double height;

  const ResultScreen({
    super.key,
    required this.gender,
    required this.weight,
    required this.age,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    double heightInMeters = height / 100;
    double bmi = weight / (heightInMeters * heightInMeters);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              CustomAppBar(
                showBackButton: true,
                onBackPressed: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(height: 40),
              const Text(
                "Your Result",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20),
              BMIResult(
                bmi: bmi,
                gender: gender,
                weight: weight,
                age: age,
                height: height,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
                child: ActionButton(
                  text: "Close",
                  onPressed: () {
                    Navigator.popUntil(context, (route) => route.isFirst);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}