import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final List<Map<String, Object>> questions;
  final int questionIndex;
  const Quiz(this.answerQuestion, this.questions, this.questionIndex,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questions[questionIndex]["question"] as String),
      ...(questions[questionIndex]["answers"] as List<Map>).map((answer) {
        return Answer(answer['text'], () => answerQuestion(answer['score']));
      })
    ]);
  }
}
