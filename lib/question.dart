import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // adding final its mean questionText is never change after initialitation constructor
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}