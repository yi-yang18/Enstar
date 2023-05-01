import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});
  @override
  State<StartScreen> createState() {
    return _StartScreenState();
  }
}

class _StartScreenState extends State<StartScreen> {
  startQuiz() {}

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
          const SizedBox(height: 80),
          const Text(
            'Learn Flutter the fan way!',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 30),
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              padding: const EdgeInsets.all(20),
            ),
            icon: const Icon(Icons.add_chart_rounded),
            label: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
