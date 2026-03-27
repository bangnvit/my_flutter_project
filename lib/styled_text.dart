import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;

  const StyledText(
    this.text, {
    super.key,
    this.color = Colors.white,
    this.fontSize = 24.0,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'My App',
      style: TextStyle(color: Colors.white, fontSize: 28.0),
    );
  }
}
