import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String theQuestion;
  Question(this.theQuestion);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20.0),
      child: Center(
        child: Text(theQuestion,
         style: TextStyle(fontSize: 18.0,
         )),
      ),
    );
  }
}