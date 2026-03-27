import 'package:flutter/material.dart';
import 'package:my_flutter_project/styled_text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 22, 245, 178),
            const Color.fromARGB(255, 26, 133, 233),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: const Center(child: StyledText('My App')),
    );
  }
}
