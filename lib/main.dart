import 'package:flutter/material.dart';
import 'package:my_flutter_project/gradient_containter.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        // body: GradientContainer.purple(),
        body: GradientContainer(
          Color.fromARGB(255, 22, 245, 178),
          Color.fromARGB(255, 26, 133, 233),
        ),
      ),
    ),
  );
}
