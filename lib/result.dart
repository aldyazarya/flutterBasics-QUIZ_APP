import 'package:flutter/material.dart';

class Result  extends StatelessWidget {
  final int resultScore;
  final Function restartQuiz;

  Result(this.resultScore, this.restartQuiz);

  String get resultPhrase {
    String resultText;

    if( resultScore <= 12) {
      resultText = 'You are not my type!';
    } else if (resultScore <= 18) {
      resultText = 'Pretty likeable!';
    } else if ( resultScore <= 24) {
      resultText = 'You are ... awesome?';
    } else {
      resultText = 'You are my type!';
    }

    return resultText;
  }
  
  @override
  Widget build(BuildContext context) {
    return Center(
                child: Column(
                  children: <Widget>[
                    Text(
                      resultPhrase,
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    FlatButton(child: Text('Restart Quiz'), onPressed: restartQuiz ,)
                  ],
                ),
              );
  }
}