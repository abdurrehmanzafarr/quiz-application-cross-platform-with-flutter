import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './answers.dart';
import './question.dart';

void main() => runApp(myapp());

class myapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return myappstate();
  }
}

class myappstate extends State<myapp> {
  int i = 0;
  int result = 0;

  void _printanswer(int score) {
    result += score;
    setState(() {
      i++;
    });
  }

  void resetquiz() {
    setState(() {
      i = 0;
      result = 0;
    });
  }

  var questions = const [
    {
      'question': 'what is your favourite color?',
      'answers': [
        {'text': 'black', 'score': 10},
        {'text': 'red', 'score': 20}
      ]
    },
    {
      'question': 'what is your animal?',
      'answers': [
        {'text': 'dog', 'score': 10},
        {'text': 'cat', 'score': 20}
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('QUIZ APPLICATION ON FLUTTER'),
          ),
          body: i < questions.length
              ? Column(children: [
                  question(questions[i]['question'] as String),
                  ...(questions[i]['answers'] as List).map((answer) {
                    return answers(
                        () => _printanswer(answer['score']), answer['text']);
                  })
                ])
              : Container(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'DONE result is ${result}',
                        textAlign: TextAlign.center,
                      ),
                      ElevatedButton(
                          onPressed: resetquiz, child: Text('Restart Quiz')),
                    ],
                  ))),
    );
  }
}
