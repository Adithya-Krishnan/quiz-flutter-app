import 'package:flutter/material.dart';

import './Quiz.dart';
import './Result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalscore = 0;
  var _questions = [
    {
      'question': 'what is your fav anime',
      'answer': [
        {'taste': 'DBZ', 'score': 10},
        {'taste': 'death Note', 'score': 8},
        {'taste': 'Naruto', 'score': 7},
      ],
    },
    {
      'question': 'who is your fav M C',
      'answer': [
        {'taste': 'Light', 'score': 8},
        {'taste': 'GOKU', 'score': 9},
        {'taste': 'Sung Jin Woo', 'score': 10},
      ],
    },
    {
      'question': 'fav jutsu?',
      'answer': [
        {'taste': 'Rasengan', 'score': 6},
        {'taste': 'Ametarasu', 'score': 8},
        {'taste': 'Chidori', 'score': 9},
      ],
    }
  ];
  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalscore = 0;
    });
  }

  void _questionAnswer(score) {
    _totalscore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print("answer pressed");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerquestion: _questionAnswer,
                questionIndex: _questionIndex,
                questions: _questions)
            : result(_totalscore, _restartQuiz),
      ),
    );
  }
}
