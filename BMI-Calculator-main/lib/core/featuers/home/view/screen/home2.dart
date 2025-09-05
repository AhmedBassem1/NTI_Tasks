import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/action_button.dart';
import '../widgets/bmi_result.dart';
import '../widgets/counter_input_card.dart';
import '../widgets/slider_input_card.dart';
import 'result_screen.dart';

class Home2 extends StatefulWidget {
  final String gender;
  const Home2({super.key, required this.gender});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  int weight = 50;
  int age = 15;
  double height = 100;

  void _showResultDialog(BuildContext context) {
    double heightInMeters = height / 100;
    double bmi = weight / (heightInMeters * heightInMeters);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  BMIResult(
                    bmi: bmi,
                    gender: widget.gender,
                    weight: weight,
                    age: age,
                    height: height,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
                    child: ActionButton(
                      text: "Close",
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                const SizedBox(height: 20),
                const Text(
                  "Please modify the values",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 40),
                Row(
                  children: [
                    Expanded(
                      child: CounterInputCard(
                        label: "Weight (kg)",
                        value: weight,
                        onIncrement: () {
                          setState(() {
                            weight++;
                          });
                        },
                        onDecrement: () {
                          setState(() {
                            if (weight > 0) weight--;
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: CounterInputCard(
                        label: "Age",
                        value: age,
                        onIncrement: () {
                          setState(() {
                            age++;
                          });
                        },
                        onDecrement: () {
                          setState(() {
                            if (age > 0) age--;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                SliderInputCard(
                  value: height,
                  onChanged: (newValue) {
                    setState(() {
                      height = newValue;
                    });
                  },
                ),
                const SizedBox(height: 50),
                ActionButton(
                  text: "Calculate",
                  onPressed: () {
                    if (weight <= 0 || height <= 0) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Please enter valid weight and height."),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    } else {
                      _showResultDialog(context);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}