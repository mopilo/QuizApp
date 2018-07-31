import 'package:flutter/material.dart';
import '../utils/question.dart';
import '../utils/quiz.dart';
import '../UI/answer_button.dart';

class QuizPage extends StatefulWidget{
  @override
  State createState() => new QuizPageState();
}

class QuizPageState extends State<QuizPage>{
  @override
  Widget build(BuildContext context){
    return new Stack(//stack elements on each oda
      children: <Widget>[
        new Column(//this is our main page
          children: <Widget>[
            new AnswerButton(true, () {print("true");}),
            new Material(
              color: Colors.white,
              child: new Padding(
                padding: new EdgeInsets.symmetric(vertical: 20.0),
                child: new Center(
                  child: new Text("State 1: Pizza is nice ")
                ),
              ),
            ),
            new AnswerButton(false, () {print("false");})
          ],
        )
      ],
    );
  }
}