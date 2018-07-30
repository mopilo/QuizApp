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
            new AnswerButton(false, () {print("false");})
          ],
        )
      ],
    );
  }
}