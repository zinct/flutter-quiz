import 'package:flutter/material.dart';
import 'package:learn_flutter/answer_button.dart';
import 'package:learn_flutter/question_text.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  final _questions = const [
    {
      'questionText': 'Whats your favorite color?',
      'answers': ['Orange', 'Blue', 'Red', 'Black'],
    },
    {
      'questionText': 'Whats your favorite movie?',
      'answers': ['Gravity Falls', 'Naruto', 'Spiderman'],
    },
    {
      'questionText': 'Whats your favorite programming language?',
      'answers': ['Dart', 'PHP', 'Javascript'],
    },
  ];

  void handleButtonPressed() {
    setState(() {
      _questionIndex += 1;
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
            ? Column(
                children: [
                  QuestionText(
                      text:
                          _questions[_questionIndex]['questionText'] as String),
                  ...(_questions[_questionIndex]['answers'] as List<String>)
                      .map((row) => AnswerButton(
                            row,
                            onClick: handleButtonPressed,
                          )),
                ],
              )
            : Center(
                child: Text('You did it!'),
              ),
      ),
    );
  }
}
