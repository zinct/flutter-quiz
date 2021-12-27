import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final VoidCallback onReset;
  final int scores;

  Result({required this.onReset, required this.scores});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 100),
      child: Column(
        children: [
          Text(
            'Your score is ${scores.toString()}',
            style: TextStyle(fontSize: 30),
          ),
          TextButton(onPressed: onReset, child: const Text("Reset Answer"))
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}
