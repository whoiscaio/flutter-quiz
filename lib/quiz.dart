import 'package:flutter/material.dart';
import 'package:flutter_quiz/finish_screen.dart';
import 'package:flutter_quiz/start_screen.dart';

class _QuizState extends State<Quiz> {
  bool _quizStarted = false;
  bool _quizFinished = false;

  int _selectedQuestion = 0;
  int _correctAnswers = 0;

  List<Map<String, dynamic>> quiz = [
    {
      'question': 'Quais são as cores da bandeira do Brasil?',
      'options': [
        'Verde, vermelho e preto',
        'Vermelho, azul e branco',
        'Preto, verde e roxo',
        'Amarelo, azul e branco',
      ],
      'answer': 'Amarelo, azul e branco'
    }, {
      'question': 'Quem é o atual presidente dos Estados Unidos da América?',
      'options': [
        'Joe Biden',
        'Barack Obama',
        'Donald Trump',
        'Michelle Obama',
      ],
      'answer': 'Joe Biden'
    }, {
      'question': 'Qual dessas empresas não é uma indústria automotiva?',
      'options': [
        'RAM',
        'Lamborghini',
        'Audi',
        'BTG Pactual',
      ],
      'answer': 'BTG Pactual'
    }, {
      'question': 'Qual desses países NÃO está nas Américas?',
      'options': [
        'Honduras',
        'Jamaica',
        'Malta',
        'Canadá'
      ],
      'answer': 'Malta'
    }
  ];

  void _startQuiz() {
    setState(() {
      _quizStarted = true;
    });
  }

  void _restartQuiz() {
    setState(() {
      _selectedQuestion = 0;
      _correctAnswers = 0;
      _quizFinished = false;
      _quizStarted = false;
    });
  }

  void _handleAnswer(String selectedAnswer) {
    if (selectedAnswer == quiz[_selectedQuestion]['answer']) {
      setState(() {
        _correctAnswers++;
      });
    }

    setState(() {
      if (_selectedQuestion == quiz.length - 1) {
        _quizFinished = true;
        return;
      }

      _selectedQuestion++;
    });
  }

  @override
  Widget build(BuildContext context) {
    String question = quiz[_selectedQuestion]['question'] as String;
    List<String> answers = quiz[_selectedQuestion]['options'];

    return _quizStarted ? (
      _quizFinished ? FinishScreen(_correctAnswers, _restartQuiz) : (
        Container(
          width: double.infinity,
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                question,
                style: const TextStyle(
                  fontSize: 20
                )
              ),
              ...answers.map((answer) => (
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(40),
                  ),
                  onPressed: () => _handleAnswer(answer),
                  child: Text(answer)
                )
              ))
            ]
          )
        )
      )
    ) : StartScreen(_startQuiz);
  }
}

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}