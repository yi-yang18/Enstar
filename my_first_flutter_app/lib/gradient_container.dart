import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/styled_text.dart';

const startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // const GradientContainer({super.key}); another method for using "key"
  // const GradientContainer(List<Color> color, {key})
  //     : colorList = color,
  //       super(key: key);

  const GradientContainer(this.colorList, {super.key});
  // const GradientContainer(this.color1, this.color2, {super.key});

  GradientContainer.blackToWhite({super.key})
      : colorList = [
          const Color.fromARGB(255, 170, 23, 23),
          const Color.fromARGB(255, 255, 255, 255),
        ];

  // const GradientContainer.blackToWhite({super.key})
  //     : color1 = Colors.black,
  //       color2 = Colors.white;

  final List<Color> colorList;
  // final Color color1;
  // final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colorList,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Image.asset(
          'assets/images/dice-1.png',
          width: 200,
        ),
      ),
    );
  }
}
