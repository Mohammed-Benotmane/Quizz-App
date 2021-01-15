import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerFunction;
  final String answerText;

  Answer(this.answerFunction, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: answerFunction,
        child: Text(answerText),
      ),
    );
  }
}
