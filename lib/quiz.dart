import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';


class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
                // Text(questions.elementAt(0)), // function elementAt for indexing just like questions[0]
                Question(questions[questionIndex]['questionText']),
                ...(questions[questionIndex]['answer'] as List<String>)
                    .map((answer) {
                  return Answer(answerQuestion, answer);
                }).toList()
              ]);
  }
}