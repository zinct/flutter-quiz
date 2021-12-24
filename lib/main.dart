import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  int questionIndex = 1;
  int counter = 1;

  void handleButtonPressed() {
    setState(() {
      counter += 1;
    });
    print(counter);
  }

  @override
  Widget build(BuildContext context) {
    List<String> questions = [
      'Whats your favorite color?',
      'Whats your favorite movie?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Learn Flutter'),
          backgroundColor: Colors.blueAccent,
        ),
        body: Column(
          children: [
            Text(counter.toString()),
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
