import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Map<String, Object> question;
  final Function answerQuestion;

  Quiz({
    @required this.question,
    @required this.answerQuestion
  }) {}

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(this.question['question']),
        ...(this.question['answers'] as List<Map<String, Object>>)
          .map((Map<String, Object> answer) {
            return Answer(() => this.answerQuestion(answer['score']), answer['text']);
          }).toList()
      ]
    );
  }
}