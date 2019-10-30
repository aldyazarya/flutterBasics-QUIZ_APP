import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // adding final its mean questionText is never change after initialitation constructor
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 10, top: 10, left: 10, right: 10),
      child: Text(questionText, 
      style: TextStyle(fontSize: 28),
      textAlign: TextAlign.center,
      ),
    ); 
      
  }
}