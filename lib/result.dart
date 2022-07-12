import 'package:flutter/material.dart';

class Result extends StatelessWidget {

 final int ResultScore;
 final Function resultClearToZero;

  Result(this.ResultScore,this.resultClearToZero);

String get resultMessage{
  String resultText="You are high";
if(ResultScore>15){
  resultText='You are very high';
}
else if(ResultScore>10 && ResultScore<15){
  resultText='You are kinda high';
}
else if(ResultScore<=10){
resultText='You are not that high';
}
else{
  resultText='Not sure how high you are';
}
  return resultText;
}


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            child: Text(resultMessage,style: TextStyle(fontSize: 36.0,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,)
          ),
          // ignore: deprecated_member_use
          RaisedButton(
          child: Text('Press To Clear'),
          onPressed: (){resultClearToZero();}
          )
        ],
      ),
    );
  }
}