// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function selectedFunc;
  final String listString;

  Answers(this.selectedFunc,this.listString);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed: (){
           selectedFunc();
        },
        color: Colors.blue,
        child: Text(listString,
        style: TextStyle(color: Colors.white),
        ),
        
      ),
    );
  }
}