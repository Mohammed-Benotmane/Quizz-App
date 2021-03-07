import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerFunction;
  final String answerText;

  Answer(this.answerFunction, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: Container(
        width: double.infinity,
        child: ElevatedButton(
          style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.symmetric(vertical: 15)),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      side: BorderSide(
                        color: Theme.of(context).accentColor,
                      )))),
          onPressed: answerFunction,
          child: Text(
            answerText,
            style: TextStyle(fontSize: 16, color: Colors.grey.shade900),
          ),
        ),
      ),
    );
  }
}
