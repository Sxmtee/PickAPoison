import 'package:flutter/material.dart';

class OptionCard extends StatelessWidget {
  final String option;
  final VoidCallback onPressed;
  final Color color;
  final double width;
  final double height;
  const OptionCard({
    super.key,
    required this.option,
    required this.onPressed,
    required this.color,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        child: Card(
          color: color,
          elevation: 15,
          child: Container(
            width: width,
            height: height,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Center(
              child: Text(
                option,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 22,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
