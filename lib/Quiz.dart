import 'package:flutter/material.dart';

import './Question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerquestion;
  final int questionIndex;
  Quiz(
      {@required this.answerquestion,
      @required this.questions,
      @required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questions[questionIndex]['question']),
      ...(questions[questionIndex]['answer'] as List<Map<String, Object>>)
          .map((answer) {
        return Answer(() => answerquestion(answer['score']), answer['taste']);
      }).toList(),
    ]);
  }
}
