import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(
      this.beginColor,
      this.endColor,
      {super.key, required this.content}
    );

  final Color beginColor;
  final Color endColor;
  final Widget content;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [beginColor, endColor],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: content,
      ),
    );
  }
}
