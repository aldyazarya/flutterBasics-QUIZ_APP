import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> { 
  var questionIndex = 0;

  // create function to onPressed
  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {

    var questions = [
      'What\s your favourite color?',
      'What\s your favourite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            // Text(questions.elementAt(0)), // function elementAt for indexing just like questions[0]
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('answer 1'),
              onPressed: answerQuestion, //declare function
            ),
            RaisedButton(
              child: Text('answer 2'),
              onPressed: () => print('answer choosen 2'), //anonymous function type 1
            ),
            RaisedButton(
              child: Text('answer 3'),
              onPressed: () {   //anonymous function type 2
                print('answer choosen 3'); //use it when we just want to declare one function or use it in one place
              },
            )
          ],
        ),
      ),
    );
  }
}
