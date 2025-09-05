import 'package:flutter/material.dart';

class CounterInputCard extends StatelessWidget {
  final String label;
  final int value;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const CounterInputCard({
    super.key,
    required this.label,
    required this.value,
    required this.onIncrement,
    required this.onDecrement,
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
            Text(
              label,
              style: const TextStyle(
                fontSize: 16,
                color: Color(0xFFACACAC),
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              value.toString(),
              style: const TextStyle(
                fontSize: 48,
                color: Color(0xFFCE922A),
                fontWeight: FontWeight.w700,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 3,
                  margin: const EdgeInsets.all(5),
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: IconButton(
                      onPressed: onDecrement,
                      icon: const Icon(
                        Icons.remove,
                        size: 25,
                        color: Color(0xFF9D6F1F),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 25),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 3,
                  margin: const EdgeInsets.all(5),
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: IconButton(
                      onPressed: onIncrement,
                      icon: const Icon(
                        Icons.add,
                        size: 25,
                        color: Color(0xFF9D6F1F),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}