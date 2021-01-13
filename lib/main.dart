import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion(){
    questionIndex++;
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
            Text(questions[questionIndex]),
            RaisedButton(onPressed: answerQuestion,child: Text("answer 1")),
            RaisedButton(onPressed: answerQuestion,child: Text("answer 2")),
            RaisedButton(onPressed: answerQuestion,child: Text("answer 3 ")),
          ],
        ),
      ),
    );
  }
}
