import 'package:flutter/material.dart';
import 'package:learn_flutter/answer_button.dart';
import 'package:learn_flutter/question_text.dart';
import 'package:learn_flutter/quiz.dart';
import 'package:learn_flutter/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _scores = 0;
  final _questions = const [
    {
      'questionText': 'Whats your favorite color?',
      'answers': [
        {'name': 'Orange', 'score': 5},
        {'name': 'Blue', 'score': 3},
        {'name': 'Red', 'score': 8},
        {'name': 'Black', 'score': 10},
      ],
    },
    {
      'questionText': 'Whats your favorite movie?',
      'answers': [
        {'name': 'Gravity Falls', 'score': 10},
        {'name': 'Naruto', 'score': 8},
        {'name': 'Spiderman', 'score': 5},
      ],
    },
    {
      'questionText': 'Whats your favorite programming language?',
      'answers': [
        {'name': 'PHP', 'score': 5},
        {'name': 'Dart', 'score': 10},
        {'name': 'JavaScript', 'score': 8},
      ],
    },
  ];

  void handleReset() {
    setState(() {
      _questionIndex = 0;
      _scores = 0;
    });
  }

  void handleAnswer(Map answer) {
    setState(() {
      _questionIndex += 1;
      _scores += (answer['score'] as int);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Learn Flutter'),
          backgroundColor: Colors.blueAccent,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                question: _questions[_questionIndex],
                onAnswer: handleAnswer,
              )
            : Result(
                scores: _scores,
                onReset: handleReset,
              ),
      ),
    );
  }
}
