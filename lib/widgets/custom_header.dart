import 'package:flutter/material.dart';
import 'package:quizzapp/widgets/custom_progess_bar.dart';

class CustomHeader extends StatelessWidget {
  final String questionText;
  final int currentQuestion;
  final int totalQuestions;
  const CustomHeader({this.questionText,this.currentQuestion,this.totalQuestions});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(30),
        bottomRight: Radius.circular(30),
      ),
      elevation: 5,
      shadowColor: Theme.of(context).accentColor,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: MediaQuery.of(context).size.height * .3,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepPurple,
              Colors.deepPurpleAccent,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0, 1],
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            CustomProgressBar(currentQuestion: currentQuestion,totalQuestions: totalQuestions),
            Text(
              questionText,
              style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        alignment: Alignment.center,
      ),
    );
  }
}
