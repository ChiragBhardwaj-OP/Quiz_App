import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {required this.answerText, required this.onTap, super.key});

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: () {
        onTap();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 14, 3, 79),
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: Text(answerText, textAlign: TextAlign.center),
    );
  }
}
