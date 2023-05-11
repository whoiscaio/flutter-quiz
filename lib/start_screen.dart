import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  final void Function() _startQuiz;

  const StartScreen(this._startQuiz, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          const Text(
            'Flutter Quiz',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          ElevatedButton(
            onPressed: _startQuiz,
            child: const Text('Começar quiz')
          )
        ],
      )
    );
  }
}