import 'package:flutter/material.dart';

class BMIResult extends StatelessWidget {
  final double bmi;
  final String gender;
  final int weight;
  final int age;
  final double height;

  const BMIResult({
    super.key,
    required this.bmi,
    required this.gender,
    required this.weight,
    required this.age,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    String category;
    Color categoryColor;
    String healthTip;
    double heightInMeters = height / 100;
    double minHealthyWeight = 18.5 * (heightInMeters * heightInMeters);
    double maxHealthyWeight = 24.9 * (heightInMeters * heightInMeters);

    if (bmi < 18.5) {
      category = 'Underweight';
      categoryColor = Colors.blue;
      healthTip = 'Try to increase your intake of nutrient-rich foods and consult a nutritionist.';
    } else if (bmi >= 18.5 && bmi < 25) {
      category = 'Normal Weight';
      categoryColor = Colors.green;
      healthTip = 'Your weight is ideal! Keep maintaining a healthy lifestyle.';
    } else if (bmi >= 25 && bmi < 30) {
      category = 'Overweight';
      categoryColor = Colors.orange;
      healthTip = 'Consider regular exercise and a balanced diet.';
    } else {
      category = 'Obesity';
      categoryColor = Colors.red;
      healthTip = 'Consult a doctor or nutritionist to improve your health and reduce risks.';
    }

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      color: Colors.green.shade50,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Your BMI:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              bmi.toStringAsFixed(1),
              style: TextStyle(
                fontSize: 55,
                fontWeight: FontWeight.bold,
                color: Color(0xff519234),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 2,
              ),
              decoration: BoxDecoration(
                color: categoryColor.withOpacity(0.3),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                category,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Container(
              height: 20,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Colors.blue,
                    Colors.green,
                    Colors.red,
                  ],
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              healthTip,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 12),
            const Divider(color: Color(0xffACACAC)),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      "$weight kg",
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Color(0xff519234),
                      ),
                    ),
                    const Text(
                      "Weight",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Color(0xffACACAC),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "${height.toStringAsFixed(1)} cm",
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Color(0xff519234),
                      ),
                    ),
                    const Text(
                      "Height",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Color(0xffACACAC),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "$age",
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Color(0xff519234),
                      ),
                    ),
                    const Text(
                      "Age",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Color(0xffACACAC),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      gender,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Color(0xff519234),
                      ),
                    ),
                    const Text(
                      "Gender",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Color(0xffACACAC),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 25),
            const Text(
              "Healthy weight for the height:",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 19,
              ),
            ),
            Text(
              "${minHealthyWeight.toStringAsFixed(1)} kg - ${maxHealthyWeight.toStringAsFixed(1)} kg",
              style: const TextStyle(
                color: Color(0xff519234),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}