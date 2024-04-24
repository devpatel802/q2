import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Opacity(
          opacity: 0.6,
          child: Image.asset(
            'assets/1.png',
            width: 200,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          "This is Quiz for everyone!",
          style: TextStyle(
            color: Color.fromRGBO(93, 235, 215, 1.000),
            fontSize: 20,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
            foregroundColor: const Color.fromRGBO(254, 250, 246, 1.000),
          ),
          label: const Text("Start Learning Here"),
          icon: const Icon(Icons.arrow_right_alt_outlined),
        ),
      ],
    ));
  }
}
