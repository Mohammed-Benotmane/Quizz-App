import 'package:flutter/cupertino.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    var resultText = 'You did it!';
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
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      ),
    );
  }
}
