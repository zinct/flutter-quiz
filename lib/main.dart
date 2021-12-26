import 'package:flutter/material.dart';
import 'package:learn_flutter/question_text.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  int questionIndex = 0;
  int counter = 1;
  List<Map> questions = [
    {
      'questionText': 'Whats your favorite color?',
      'answers': ['Orange', 'Blue', 'Red', 'Black']
    },
    {
      'questionText': 'Whats your favorite movie?',
      'answers': ['Gravity Falls', 'Naruto', 'Spiderman']
    },
  ];

  void handleButtonPressed() {
    setState(() {
      questionIndex += 1;
      counter += 1;
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
        body: Column(
          children: [
            QuestionText(text: counter.toString() + ' Putang ina bobo'),
            ElevatedButton(
              child: Text("Answer 1"),
              onPressed: handleButtonPressed,
            ),
            ElevatedButton(
              child: Text("Answer 2"),
              onPressed: null,
            ),
            ElevatedButton(
              child: Text("Answer 3"),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
