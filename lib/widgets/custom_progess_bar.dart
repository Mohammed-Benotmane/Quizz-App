import 'package:flutter/material.dart';

class CustomProgressBar extends StatelessWidget {
  final int currentQuestion;
  final int totalQuestions;

  CustomProgressBar({this.currentQuestion, this.totalQuestions});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15,
      width: MediaQuery.of(context).size.width-50,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 1),
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          FractionallySizedBox(
            widthFactor: ((currentQuestion + 1) / (totalQuestions + 1)),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
