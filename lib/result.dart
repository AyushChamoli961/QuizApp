import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Result extends StatelessWidget {
  int score;
  Result(this.score, {super.key});

  @override
  Widget build(BuildContext context) {
    return score > 25
        ? Center(
            child: Text(
            "You are a verified genius Listener",
            style: TextStyle(
              fontSize: 30,
              foreground: Paint()
                ..shader = const LinearGradient(
                  colors: <Color>[Colors.red, Color(0xFFC1A217)],
                ).createShader(const Rect.fromLTWH(0.0, 0.0, 300.0, 70.0)),
            ),
            textAlign: TextAlign.center,
          ))
        : Center(
            child: Text(
              "You are shit listener",
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
