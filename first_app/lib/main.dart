import 'package:first_app/quiz.dart';
import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Blue', 'score': 8},
        {'text': 'White', 'score': 13},
        {'text': 'Black', 'score': 28},
        {'text': 'Red', 'score': 38}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 8},
        {'text': 'Cock', 'score': 54},
        {'text': 'Human', 'score': 28},
        {'text': 'Pussy', 'score': 82},
      ]
    },
    {
      'questionText': 'Who\'s the most handsome man in the world?',
      'answers': [
        {'text': 'My', 'score': 100},
        {'text': 'My Dep Trai', 'score': 100},
        {'text': 'My cute', 'score': 100},
        {'text': 'My de thuong', 'score': 100},
      ]
    },
  ];
  var _index = 0;
  var _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _index++;
    });
  }

  void _reset() {
    setState(() {
      _totalScore = 0;
      _index = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Alo"),
              backgroundColor: Colors.greenAccent,
            ),
            body: _index < questions.length
                ? Quiz(
                    questions: questions,
                    index: _index,
                    answerQuestion: _answerQuestion)
                : Result(resultScore: _totalScore, reset: _reset)));
  }
}
