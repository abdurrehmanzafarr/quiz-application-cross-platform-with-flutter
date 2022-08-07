import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class question extends StatelessWidget {
  final String q;

  question(this.q) {}

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(20),
        child: Text(q,
            style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),
            textAlign: TextAlign.center));
  }
}
