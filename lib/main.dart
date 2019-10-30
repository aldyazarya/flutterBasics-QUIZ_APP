import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
  var _questionIndex = 0;

  // create function to onPressed
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\s your favourite color?',
        'answer': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText': 'What\s your favourite animal?',
        'answer': ['Rabbit', 'Snake', 'Elephant', 'Lion']
      },
      {
        'questionText': 'Who\s your favourite member black pink?',
        'answer': ['Jisoo', 'Jenny', 'Lisa', 'Rose']
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            // Text(questions.elementAt(0)), // function elementAt for indexing just like questions[0]
            Question(questions[_questionIndex]['questionText']),
            ...(questions[_questionIndex]['answer'] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ]
        ),
      ),
    );
  }
}
