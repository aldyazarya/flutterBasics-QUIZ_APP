import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  
  final _questions = const [
    {
      'questionText': 'What\s your favourite color?',
      'answer': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 7},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ],
    },
    {
      'questionText': 'What\s your favourite animal?',
      'answer': [
        {'text': 'Cat', 'score': 10},
        {'text': 'Dog', 'score': 8},
        {'text': 'Lion Cub', 'score': 6},
        {'text': 'Snake', 'score': 1}
      ]
    },
    {
      'questionText': 'Who\s your favourite member black pink?',
      'answer': [
        {'text': 'Jisoo', 'score': 10},
        {'text': 'Rose', 'score': 8},
        {'text': 'Jenny', 'score': 7},
        {'text': 'Lisa', 'score': 6}
      ]
    }
  ];
  
  
  var _questionIndex = 0;
  var _totalScore = 0;
  // create function to onPressed
  void _answerQuestion( int score) {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);

    _totalScore += score;


    if (_questionIndex < _questions.length) {
      print('We have more question');
    } else {
      print('no more questions');
    }

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
              questionIndex: _questionIndex,
              answerQuestion: _answerQuestion,
              questions: _questions,
            )
          : Result(_totalScore),
    ));
  }
}
