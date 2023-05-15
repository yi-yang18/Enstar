import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  //approach 1

  // Widget? activeScreen;

  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  // void switchScreen() {
  //   setState(() {
  //     activeScreen = const QuestionsScreen();
  //   });
  // }

  //approach 2
  // var activeScreen = 'start_screen';

  // void switchScreen() {
  //   setState(() {
  //     activeScreen = 'questions_screen';
  //   });
  // }

  //approach 3
  String? activeScreen;

  final List<String> selectedAnswer = [];
  void chooseAnswer(String answer) {
    setState(() {
      selectedAnswer.add(answer);
    });
  }

  void switchScreen() {
    setState(() {
      activeScreen = 'questions_screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'questions_screen') {
      screenWidget = QuestionsScreen(chooseAnswer);
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            color: Colors.purple,
          ),
          //child: activeScreen

          // child: activeScreen == 'start_screen'
          //     ? StartScreen(switchScreen)
          //     : const QuestionsScreen(),
          child: screenWidget,
        ),
      ),
    );
  }
}
