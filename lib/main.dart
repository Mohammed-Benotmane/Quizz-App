import 'package:flutter/material.dart';
import 'package:quizzapp/answer.dart';
import 'package:quizzapp/question.dart';
import 'package:quizzapp/quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final _questions = const [
    {
      'questionText': "What\'s the color of the sun?",
      'answers': ['Yellow', 'Green', 'Red', "Blue"],
    },
    {
      'questionText': "What\'s the currency of germany?",
      'answers': ['Dinars', 'Euro', 'Dollars'],
    },
    {
      'questionText': "Who\'s the richest man in the world?",
      'answers': ['Elon Musk', 'Cristiano Ronaldo', 'Leonardo Dicaprio'],
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print("answer choosen");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
          centerTitle: true,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_answerQuestion,_questions)
            : Center(
                child: Text("You did it!"),
              ),
      ),
    );
  }
}
