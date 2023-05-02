import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  final void Function() startQuiz;
  const StartScreen(this.startQuiz, {super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
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
            //By using the widget property,
            //the State object can access the properties and methods
            //of the corresponding StatefulWidget,
            //including the ones that were passed as constructor parameters.
            //This makes it easy to pass data
            //between the widget and its corresponding state object.
            onPressed: widget.startQuiz,
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
