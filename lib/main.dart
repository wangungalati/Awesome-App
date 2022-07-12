import 'package:awesome_app/Question.dart';
import 'package:awesome_app/answers.dart';
import 'package:awesome_app/quiz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './result.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage()
    )
  );
  
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

 final questions=const[
      {'questionText':'Who are you?',
    'answers':[{'Text':'Bob','Score':3},{'Text':'Dennis','Score':4},{'Text':'Ricky','Score':5},{'Text':'John','Score':2}]
    },

    {'questionText':'What are you?',
    'answers':[{'Text':'Human','Score':10},{'Text':'Dog','Score':7},{'Text':'Cat','Score':8},{'Text':'Mouse','Score':4}]
    }
    ];

var getIndex=0;

var totalScore=0;

void resultClear(){
 setState(() {
    totalScore=0;
  getIndex=0;
 });
}

void addIndexByOne(int score){

setState(() {
  getIndex=getIndex+1;

  totalScore+=score;
});

if(getIndex < questions.length){
print('You still have more questions');
}else{
  print('You don\'t have any questions');
}

print(getIndex);
}



  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
       title: Text('Awesome App'),
       centerTitle: true,
       ),
       body: 
         getIndex < questions.length ? Quiz(questionIndex: getIndex,answersQuestion: addIndexByOne,questions: questions,):Result(totalScore,resultClear),
         
    );
  }
}
