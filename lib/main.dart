import 'package:flutter/material.dart';
import 'package:quizzapp/question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print("answer choosen");
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What\'s the color of the sun?",
      "What\'s the currency of germany?",
      "Who\'s the richest man in the world?",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            RaisedButton(onPressed: _answerQuestion, child: Text("answer 1")),
            RaisedButton(onPressed: _answerQuestion, child: Text("answer 2")),
            RaisedButton(onPressed: _answerQuestion, child: Text("answer 3 ")),
          ],
        ),
      ),
    );
  }
}
