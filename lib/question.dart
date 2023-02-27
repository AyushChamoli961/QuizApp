import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  const Question(this.questionText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 30,
          foreground: Paint()
            ..shader = const LinearGradient(
              colors: <Color>[Colors.red, Color(0xFFC1A217)],
            ).createShader(const Rect.fromLTWH(0.0, 0.0, 300.0, 70.0)),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
