import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool isCorrect;
  final bool isSelected;
  final bool showResult;

  const AnswerButton({
    super.key,
    required this.text,
    required this.onTap,
    required this.isCorrect,
    required this.isSelected,
    required this.showResult,
  });

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = Colors.grey.shade200;
    Color textColor = Colors.black;

    if (showResult) {
      if (isCorrect) {
        backgroundColor = Colors.green;
        textColor = Colors.white;
      } else if (isSelected) {
        backgroundColor = Colors.red;
        textColor = Colors.white;
      } else {
        backgroundColor = Colors.grey.shade300;
        textColor = Colors.black;
      }
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 50),
          backgroundColor: backgroundColor,
          foregroundColor: textColor,
        ),
        child: Text(text),
      ),
    );
  }
}