import 'package:flutter/material.dart';
import '../utils/question.dart';
import '../utils/quiz.dart';

import '../UI/answer_button.dart';
import '../UI/question_text.dart';
import '../UI/correct_wrong.dart';

class QuizPage extends StatefulWidget{
  @override
  State createState() => new QuizPageState();
}

class QuizPageState extends State<QuizPage>{
  @override
  Widget build(BuildContext context){
    return new Stack(//stack elements on each oda
    fit: StackFit.expand,
      children: <Widget>[
        new Column(//this is our main page
          children: <Widget>[
            new AnswerButton(true, () {print("true");}),
            new QuestionText("Pizza is nice", 1),
            new AnswerButton(false, () {print("false");})
          ],
        ),
        new CorrectWrongOverlay()
      ],
    );
  }
}