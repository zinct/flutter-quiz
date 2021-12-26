import 'package:flutter/material.dart';

class QuestionText extends StatelessWidget {
  final String text;
  const QuestionText({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
      margin: EdgeInsets.only(top: 20, bottom: 20),
      width: double.infinity,
    );
  }
}
