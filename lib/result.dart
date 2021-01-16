import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetFunction;

  Result(this.resultScore,this.resetFunction);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 5) {
      resultText = "Noob";
    } else if (resultScore <= 9) {
      resultText = 'You\'re good';
    } else {
      resultText = 'Excellent';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(onPressed: resetFunction, child: Text('Restart Quiz!'),textColor: Colors.blue,)
        ],
      ),
    );
  }
}
