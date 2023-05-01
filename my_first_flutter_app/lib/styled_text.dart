import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  //if use another format, 'super(key.key) is in the end of the inilization.
  // StyledText(String text, {key}) : outputText = text, super(key: key);
  const StyledText(this.outputText, {super.key});

  final String outputText;

  @override
  Text build(context) {
    return Text(
      outputText,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }
}
