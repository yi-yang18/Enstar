import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/styled_text.dart';

class GradientContainer extends StatelessWidget {
  // const GradientContainer({super.key}); another method for using "key"
  const GradientContainer({key}) : super(key: key);

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.black, Color.fromARGB(255, 84, 76, 76)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: StyledText(),
      ),
    );
  }
}
