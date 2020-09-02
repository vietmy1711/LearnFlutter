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
  var index = 0;

  void answerQuestion() {
    setState(() {
      if (index == 2) {
        index = 0;
        return;
      }
      index++;
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
                Text(questions[index]),
                RaisedButton(
                    child: Text("Answer 1"), onPressed: answerQuestion),
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
