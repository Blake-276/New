import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questions = [
    {
      'questionText': 'What\'s your favorite food?',
      'answers': ['chicken', 'samosa', 'wai wai', 'laphing']
    },
    {
      'questionText': 'What\'s your favorite number?',
      'answers': ['one', 'four', 'seven', 'ten']
    },
    {
      'questionText': 'What\'s your favorite device?',
      'answers': ['PS4', 'Computer', 'TV', 'mobile']
    }
  ];
  var _questionIndex = 0;

  void _answerQuestions() {
    setState(() {
      _questionIndex += 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("My First App")),
            body: (_questionIndex < 2)
                ? Column(children: [
                    Question(
                        (questions[_questionIndex]['questionText'] as String)),
                    ...(questions[_questionIndex]['answers'] as List<String>)
                        .map((answer) {
                      return Answer(_answerQuestions, answer);
                    }).toList()
                  ])
                : Container(
                    margin: EdgeInsets.only(top: 40),
                    child: Column(children: [
                      Center(
                        child: Text(
                          "You did it!",
                          style: TextStyle(
                              fontSize: 36, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      RaisedButton(
                          child: Text("Again"),
                          textColor: Colors.white,
                          color: Colors.blue,
                          onPressed: _resetQuiz)
                    ]))));
  }
}
