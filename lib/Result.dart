import 'package:flutter/material.dart';

// ignore: camel_case_types
class result extends StatelessWidget {
  final int totalscore;
  final Function restartQuiz;
  result(this.totalscore, this.restartQuiz);
  String get resultPhrase {
    String resultText;
    if (totalscore < 20)
      resultText = "bad taste";
    else if (totalscore < 24)
      resultText = "not bad";
    else
      resultText = "pretty good";
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Text(
        resultPhrase,
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
      // ignore: deprecated_member_use
      FlatButton(
        textColor: Colors.blue,
        child: Text('restart quiz'),
        onPressed: restartQuiz,
      )
    ]));
  }
}
