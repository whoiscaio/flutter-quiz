import 'package:flutter/material.dart';

class FinishScreen extends StatelessWidget {
  final int _correctAnswers;
  final void Function() _restartQuiz;

  const FinishScreen(this._correctAnswers, this._restartQuiz, {super.key});

  @override
  Widget build (BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          const Text(
            'Quiz finalizado',
            style: TextStyle(
              fontSize: 20,
            )
          ),
          Text('Questões corretas: $_correctAnswers'),
          ElevatedButton(
            onPressed: _restartQuiz,
            child: const Text('Voltar para tela inicial')
          ),
        ],
      )
    );
  }
}