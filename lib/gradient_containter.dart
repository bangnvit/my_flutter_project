import 'package:flutter/material.dart';
import 'package:my_flutter_project/styled_text.dart';

var beginAlignment = Alignment.topCenter;
var endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: const [
            Color.fromARGB(255, 22, 245, 178),
            Color.fromARGB(255, 26, 133, 233),
          ],
          begin: beginAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(child: StyledText('My App')),
    );
  }
}
