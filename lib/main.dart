import 'package:flutter/material.dart';
import 'package:quiz_app/answers.dart';
import 'package:quiz_app/quizapp.dart';
import 'package:quiz_app/questions.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final qusetions = [
    {
      "qustion": "What is your Favurite game ?",
      "answers": ['Football', 'Cricket', 'Tanes', 'Basket Ball']
    },
    {
      "qustion": "What is your Favurite color ?",
      "answers": ['Red', 'Green', 'Yellow', 'Blue']
    },
    {
      "qustion": "The synonym of ‘autography’ is",
      "answers": [
        'Graphical thing',
        'Writing about',
        'Graph sheet',
        'Painting on graph'
      ]
    },
    {
      "qustion": "Choose the correct sentence-",
      "answers": [
        ' this is an unique case',
        'this is a very unique case',
        ' this is a unique case',
        'this is the most unique case'
      ]
    },
    {
      "qustion": "Knowledge can be compared ___ light.",
      "answers": [' with', 'to', 'of', 'by']
    },
    {
      "qustion": " Identify the correct spelling-",
      "answers": [' Volaptous', 'Volaptuos', 'Voleptious', 'Voluptuous']
    },
    {
      "qustion": " Toot one’s own horn’ means-",
      "answers": [' boast', 'talks a lot', 'possessive', ' self destruction']
    },
    {
      "qustion": "A person with the same name as another-",
      "answers": [' anonymous', 'nickname', 'Pseudonym', 'namesake']
    },
    {
      "qustion":
          "Cutting back on benefits has been used as a ____ of increasing profit margin.",
      "answers": [' means', 'policy', 'method', 'program']
    },
    {
      "qustion":
          "_____ better, the team would have been able to defeat the opponent.",
      "answers": [
        ' Had it prepared',
        'Would it prepared',
        ' It prepares',
        'If it prepares'
      ]
    },
    {
      "qustion": "When ____ to her?",
      "answers": [
        '  did you talked',
        ' you talked',
        ' talked you',
        ' did you talk'
      ]
    },
    {
      "qustion": "How many feet is equal to 1 notical mile?",
      "answers": [' 5220', '7010', '6250', '6076']
    },
    {
      "qustion": "If x:y=5:3, then (8x-5y):(8x+5y)=?",
      "answers": ['  3:12', '8 : 12', ' 5 : 11', ' 5 : 15']
    },
    {
      "qustion": "The value of 0.1×0.1 is",
      "answers": [' 0.1', ' .1', '  0.01', ' 0.001']
    },
  ];
  int _incrementQusetion = 0;
  void _qusetionUpdate() {
    setState(() {
      _incrementQusetion++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Quiz App"),
            centerTitle: true,
          ),
          body: _incrementQusetion < qusetions.length
              ? Quiz(
                  questionList: qusetions,
                  questionFunction: _qusetionUpdate,
                  questionIncrement: _incrementQusetion,
                )
              : Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Quiz Completed"),
                    ],
                  ),
                )),
    );
  }
}
