import 'package:flutter/material.dart';

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return const Text('Quiz');
  }
}

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}