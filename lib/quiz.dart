import 'package:flutter/material.dart';

import 'question_text.dart';
import 'answer_button.dart';

class Quiz extends StatelessWidget {
  final Map<String, Object> question;
  final void Function(Map) onAnswer;

  const Quiz({required this.question, required this.onAnswer});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          QuestionText(text: question['questionText'] as String),
          ...(question['answers'] as List<Map<String, Object>>)
              .map((row) => AnswerButton(
                    row['name'] as String,
                    onClick: () => onAnswer(row),
                  )),
        ],
      ),
    );
  }
}
