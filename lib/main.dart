import 'package:flutter/material.dart';
import 'package:flutter_quiz/quiz.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Quiz'),
        ),
        body: const Quiz(),
      )
    );
  }
}