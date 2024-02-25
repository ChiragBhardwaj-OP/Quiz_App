import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            color: const Color.fromARGB(131, 255, 255, 255),
            width: 300,
          ),
          const SizedBox(height: 25),
          const Text(
              style: TextStyle(fontSize: 28, color: Colors.white),
              'Learn Flutter the fun way!'),
          const SizedBox(height: 25),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: startQuiz,
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
