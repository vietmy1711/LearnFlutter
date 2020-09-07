import 'package:flutter/material.dart';
import 'package:text_control/control.dart';

import './text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _index = 0;

  final text = const ["Text 1", "Text 2", "Text 3"];

  void _randomNum() {
    setState(() {
      if (_index == text.length - 1) {
        _index = 0;
      } else {
        _index++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Text Control"),
        ),
        body: Column(
          children: [
            OutputText(
              text: text[_index],
            ),
            TextControl(_randomNum),
          ],
        ),
      ),
    );
  }
}
