import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Result extends StatelessWidget {
  final int resultScore;

  final Function reset;

  Result({this.resultScore, this.reset});

  String get resultParse {
    String resultText;
    if (resultScore <= 150) {
      resultText = "You are ngu vai lon!";
    } else {
      resultText = "Hay lam con cho a!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultParse,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text("Restart"),
            textColor: Colors.blue,
            onPressed: reset,
          ),
        ],
      ),
    );
  }
}
