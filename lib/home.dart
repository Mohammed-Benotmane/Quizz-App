import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizzapp/providers/questions.dart';
import 'package:quizzapp/quiz.dart';
import 'package:quizzapp/result.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _questionIndex = 0;

  int _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
    print("answer choosen");
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final questions = Provider.of<Questions>(context).questions;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: _questionIndex < questions.length
              ? Quiz(answerQuestion: _answerQuestion, questionIndex: _questionIndex, questions: questions)
              : Result(_totalScore, _resetQuiz,questions.length)),
    );
  }
}
