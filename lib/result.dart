import 'dart:io';

import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetFunction;
  final int totalQuestions;

  Result(this.resultScore, this.resetFunction, this.totalQuestions);

  String get resultPhrase {
    String resultText;
    if (resultScore / totalQuestions <= .5) {
      resultText = "Noob";
    } else if (resultScore / totalQuestions <= .9) {
      resultText = 'You\'re good';
    } else {
      resultText = 'Excellent';
    }
    return resultText;
  }

  String get score {
    return 'Your score is: $resultScore';
  }

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
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Material(
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
              child: Text(
                resultPhrase,
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              alignment: Alignment.center,
            ),
          ),
          SizedBox(height: 40),
          Container(
              height: 200,
              child: Image.network((resultScore / totalQuestions) > .5
                  ? 'https://i.imgflip.com/20yuxe.jpg'
                  : 'https://i.pinimg.com/originals/bd/15/b0/bd15b0425acadda93bd3560baa89c9f4.jpg')),
          SizedBox(height: 20),
          Text(
            score,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: FlatButton(
              padding: EdgeInsets.symmetric(vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              onPressed: resetFunction,
              child: Text(
                'Restart Quiz!',
                style: TextStyle(fontSize: 18),
              ),
              textColor: Colors.white,
              color: Theme.of(context).accentColor,
            ),
          ),
          SizedBox(height: 20),
          Spacer(),
          AdmobBanner(
            adUnitId: _getBannerAdUnitId(),
            adSize: AdmobBannerSize(width: MediaQuery.of(context).size.width.toInt(), height: 50, name: "On sale"),
          ),
        ],
      ),
    );
  }
}
