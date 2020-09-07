import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
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
      'answers': ['Blue', 'Black', 'Green', 'White']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Rabbit', 'Snake', 'Cock', 'Pussy']
    },
    {
      'questionText': 'Who\'s the most handsome man in the world?',
      'answers': ['My', 'Dan', 'My Dan', 'My dep trai']
    },
  ];
  var _index = 0;

  void _answerQuestion() {
    setState(() {
      // if (_index == questions.length - 1) {
      //   _index = 0;
      //   return;
      // }
      _index++;
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
                ? Column(
                    children: [
                      Question(questions[_index]['questionText']),
                      ...(questions[_index]['answers'] as List<String>)
                          .map((answer) => Answer(answer, _answerQuestion))
                          .toList()
                    ],
                  )
                : Center(
                    child: Text("No more"),
                  )));
  }
}
