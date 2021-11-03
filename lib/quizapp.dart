import 'package:flutter/material.dart';
import 'package:quiz_app/answers.dart';
import 'package:quiz_app/questions.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questionList;
  final VoidCallback questionFunction;
  final int questionIncrement;
  const Quiz(
      {required this.questionList,
      required this.questionFunction,
      required this.questionIncrement});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Question(questionList[questionIncrement]['qustion'] as String),
          ...(questionList[questionIncrement]['answers'] as List<String>)
              .map((e) => Answer(questionFunction, e))
              .toList(),
        ],
      ),
    );
  }
}
