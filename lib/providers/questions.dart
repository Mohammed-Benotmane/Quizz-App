import 'package:flutter/material.dart';

class Questions with ChangeNotifier{
 List<Map<String,Object>> _questions = [
   {
     'questionText': "What\'s the color of the sun?",
     'answers': [
       {'text': 'Yellow', 'score': 1},
       {'text': 'Green', 'score': 0},
       {'text': 'Red', 'score': 0},
       {'text': 'Blue', 'score': 0}
     ],
   },
   {
     'questionText': "What\'s the currency of germany?",
     'answers': [
       {'text': 'Dinars', 'score': 0},
       {'text': 'Euros', 'score': 1},
       {'text': 'Dollars', 'score': 0}
     ],
   },
   {
     'questionText': "Who\'s the richest man in the world?",
     'answers': [
       {'text': 'Elon Musk', 'score': 1},
       {'text': 'Cristiano Ronaldo', 'score': 0},
       {'text': 'Leonardo Dicaprio', 'score': 0}
     ],
   },
   {
     'questionText': "Who\'s the best flutter developer in the world?",
     'answers': [
       {'text': 'Marco Reus', 'score': 0},
       {'text': 'Mohamed Benotmane', 'score': 1},
       {'text': 'Leonardo Dicaprio', 'score': 0}
     ],
   },
 ];

 List<Map<String,Object>> get questions {
   return [..._questions];
 }
}