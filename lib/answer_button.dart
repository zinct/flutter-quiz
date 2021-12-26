import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String _answerText;
  final VoidCallback? onClick;

  AnswerButton(this._answerText, {this.onClick});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        child: ElevatedButton(
          child: Text(_answerText),
          onPressed: onClick,
        ));
  }
}
