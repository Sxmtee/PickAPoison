import 'package:flutter/material.dart';
import 'package:quizapp/Common/Utils/colors.dart';

class NextButton extends StatelessWidget {
  final VoidCallback onPressed;
  const NextButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 10,
        ),
        decoration: BoxDecoration(
          color: Pallete.neutral,
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Text(
          "Next Poison",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
