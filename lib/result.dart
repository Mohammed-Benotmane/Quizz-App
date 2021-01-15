import 'package:flutter/cupertino.dart';

class Result extends StatelessWidget {
  final int resultScore;
  Result(this.resultScore);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Your score is: $resultScore"),
    );
  }
}

