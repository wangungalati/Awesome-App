
import 'package:flutter/material.dart';
import './Question.dart';
import './answers.dart';

class Quiz extends StatelessWidget {
  final List questions;
  final Function answersQuestion;
  final int questionIndex;
  
Quiz({required this.questions,required this.answersQuestion,required this.questionIndex});
  

  @override
  Widget build(BuildContext context) {
    return Column(children: [
           Question((questions[questionIndex]['questionText']).toString()),

          ...(questions[questionIndex]['answers'] as List<Map<String,Object>>).map((answer){
            return Answers(()=>answersQuestion(answer['Score']), answer['Text'].toString());
          }).toList()
         ],);
  }
}