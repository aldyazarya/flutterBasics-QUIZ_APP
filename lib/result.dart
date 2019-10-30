import 'package:flutter/material.dart';

class Result  extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    String resultText;

    if( resultScore <= 8) {
      resultText = 'You are not my type!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if ( resultScore <= 16) {
      resultText = 'You are ... awesome?';
    } else {
      resultText = 'You are my type!';
    }

    return resultText;
  }
  
  @override
  Widget build(BuildContext context) {
    return Center(
                child: Text(
                  resultPhrase,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              );
  }
}