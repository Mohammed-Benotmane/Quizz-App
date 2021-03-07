import 'dart:io';

import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/material.dart';
import 'package:quizzapp/answer.dart';

import './widgets/custom_header.dart';

class Quiz extends StatefulWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({@required this.questions, @required this.questionIndex, @required this.answerQuestion});

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  String _getBannerAdUnitId() {
    if (Platform.isIOS) {
      return 'ca-app-pub-3940256099942544/2934735716';
    } else if (Platform.isAndroid) {
      return 'ca-app-pub-3940256099942544/6300978111';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomHeader(
          questionText: widget.questions[widget.questionIndex]['questionText'],
          currentQuestion: widget.questionIndex,
          totalQuestions: widget.questions.length,
        ),

        SizedBox(height: 40),
        ...(widget.questions[widget.questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(() => widget.answerQuestion(answer['score']), answer['text']);
        }).toList(),
        Spacer(),
        AdmobBanner(
          adUnitId: _getBannerAdUnitId(),
          adSize: AdmobBannerSize(width: MediaQuery.of(context).size.width.toInt(), height: 50, name: "On sale"),
        ),
      ],
    );
  }
}
