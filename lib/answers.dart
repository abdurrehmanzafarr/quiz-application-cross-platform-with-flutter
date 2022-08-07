// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import './main.dart';

class answers extends StatelessWidget {
  var eHandler;
  String answer;

  answers(this.eHandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(answer),
        onPressed: eHandler,
      ),
    );
  }
}
