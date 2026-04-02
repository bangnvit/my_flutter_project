import 'package:flutter/material.dart';
import 'package:my_flutter_project/dice_roller.dart';

const beginAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  final Color color1;
  final Color color2;

  const GradientContainer(this.color1, this.color2, {super.key});

  // Named constructor
  const GradientContainer.purple({super.key})
    : color1 = Colors.deepPurple,
      color2 = Colors.indigo;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: beginAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(child: DiceRoller()),
    );
  }
}

// class GradientContainer1 extends StatelessWidget {
//   final List<Color> colors;

//   const GradientContainer1({super.key, required this.colors});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           begin: beginAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: Center(
//         child: StyledText('My App', color: Colors.black, fontSize: 50.0),
//       ),
//     );
//   }
// }
