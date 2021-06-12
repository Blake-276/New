import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 10, bottom: 0),
      child: RaisedButton(
        textColor: Colors.white,
        child: Text(answerText),
        color: Colors.blue,
        onPressed: selectHandler,
      ),
    );
  }
}
