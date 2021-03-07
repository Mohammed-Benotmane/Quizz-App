import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerFunction;
  final String answerText;

  Answer(this.answerFunction, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 5),
      child: Container(
        width: double.infinity,
        child: RaisedButton(
          padding: EdgeInsets.symmetric(vertical: 15),
          color: Colors.white,
          textColor: Colors.grey.shade900,
          onPressed: answerFunction,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
              side: BorderSide(
                color: Theme.of(context).accentColor,
              )),
          child: Text(
            answerText,
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
