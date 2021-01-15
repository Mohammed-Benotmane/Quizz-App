import 'package:flutter/material.dart';
import 'package:quizzapp/answer.dart';
import 'package:quizzapp/question.dart';
import 'package:quizzapp/quiz.dart';
import 'package:quizzapp/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  int _totalScore = 0;
  final _questions = const [
    {
      'questionText': "What\'s the color of the sun?",
      'answers': [
        {'text': 'Yellow', 'score': 1},
        {'text': 'Green', 'score': 0},
        {'text': 'Red', 'score': 0},
        {'text': 'Blue', 'score': 0}
      ],
    },
    {
      'questionText': "What\'s the currency of germany?",
      'answers': [
        {'text': 'Dinars', 'score': 0},
        {'text': 'Euros', 'score': 1},
        {'text': 'Dollars', 'score': 0}
      ],
    },
    {
      'questionText': "Who\'s the richest man in the world?",
      'answers': [
        {'text': 'Elon Musk', 'score': 1},
        {'text': 'Cristiano Ronaldo', 'score': 0},
        {'text': 'Leonardo Dicaprio', 'score': 0}
      ],
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
    print("answer choosen");
  }

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
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
            ? Quiz(answerQuestion: _answerQuestion, questionIndex: _questionIndex, questions: _questions)
            : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
