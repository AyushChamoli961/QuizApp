import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  void answerQuestion(int score) {
    setState(() {
      _questionIndex += 1;
      _totalScore += score;
    });
  }

  @override
  Widget build(BuildContext context) {
    final questions = [
      {
        "question": "Who/'s Your favourite DHH artist?",
        'answers': [
          {'text': 'Talha Anjum', 'score': 10},
          {'text': 'KRSNA', 'score': 6},
          {'text': 'Emiway bantai', 'score': 1},
          {'text': 'Seedhe Maut', 'score': 8},
        ],
      },
      {
        "question": "Among these song you find to play on loop?",
        'answers': [
          {'text': 'Namastute by Seedhe Maut', 'score': 10},
          {'text': 'Cold Hours by aleemrk', 'score': 10},
          {'text': 'No cap by KRSNA', 'score': 9},
          {'text': 'Company by Emiway Bantai', 'score': 2},
        ],
      },
      {
        "question": "Which artist you want to Feature in your album?",
        'answers': [
          {'text': 'Talha Anjum', 'score': 10},
          {'text': 'KRSNA', 'score': 8},
          {'text': 'ABJ Encore', 'score': 9},
          {'text': 'MC Stan', 'score': 7},
        ],
      }
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("DHH Quiz"),
          ),
          body: _questionIndex < questions.length
              ? Quiz(answerQuestion, questions, _questionIndex)
              : Result(_totalScore)),
    );
  }
}
 
// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter layout demo',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Flutter layout demo'),
//         ),
//         body: const Center(
//           child: Text('Hello World'),
//         ),
//       ),
//     );
//   }
// }

