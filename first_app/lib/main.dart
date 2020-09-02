import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _index = 0;

  void _answerQuestion() {
    setState(() {
      if (_index == 2) {
        _index = 0;
        return;
      }
      _index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = ["con cu", "con chim", "con cuuuu"];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Alo"),
              backgroundColor: Colors.greenAccent,
            ),
            body: Column(
              children: [
                Text(questions[_index]),
                RaisedButton(
                    child: Text("Answer 1"), onPressed: _answerQuestion),
                RaisedButton(
                    child: Text("Answer 2"), onPressed: () => print("object")),
                RaisedButton(
                    child: Text("Answer 3"),
                    onPressed: () {
                      print("answer 3");
                    }),
              ],
            )));
  }
}
