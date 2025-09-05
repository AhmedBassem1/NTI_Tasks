import 'package:flutter/material.dart';

class SliderInputCard extends StatelessWidget {
  final double value;
  final ValueChanged<double> onChanged;

  const SliderInputCard({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
      ),
      elevation: 3,
      margin: const EdgeInsets.all(5),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          color: const Color(0xFFFBF6EE),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Height (cm)",
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFFACACAC),
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              value.toStringAsFixed(1),
              style: const TextStyle(
                fontSize: 48,
                color: Color(0xFFCE922A),
                fontWeight: FontWeight.w700,
              ),
            ),
            Slider(
              value: value,
              min: 50.0,
              max: 250.0,
              divisions: 200,
              label: value.toStringAsFixed(1),
              activeColor: const Color(0xFFCE922A),
              inactiveColor: const Color(0xFFACACAC),
              onChanged: onChanged,
            ),
          ],
        ),
      ),
    );
  }
}