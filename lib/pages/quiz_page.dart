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

  Question currentQuestion;

  Quiz quiz = new Quiz([
    new Question("Elon Musk is human", false),
    new Question("Pizza is healthy", false),
    new Question("Flutter is awesome", true)
  ]);
  String questionTest;
  int questionNumber;
  bool isCorrect;
  bool overLayVisible = false;

  @override
  void initState(){
    super.initState();
    currentQuestion = quiz.nextQuestion;
    questionTest = currentQuestion.question;
    questionNumber = quiz.questionNumber;
  }

  //method to check if current answer is right

  void handleAnswer(bool answer){
    isCorrect = (currentQuestion.answer == answer); 
    quiz.answer(isCorrect);
    this.setState(() {
      overLayVisible = true;
    });
  }

  @override
  Widget build(BuildContext context){
    return new Stack(//stack elements on each oda
    fit: StackFit.expand,
      children: <Widget>[
        new Column(//this is our main page
          children: <Widget>[
            new AnswerButton(true, () => handleAnswer(true)),
            new QuestionText(questionTest, questionNumber),
            new AnswerButton(false, () => handleAnswer(false))
          ],
        ),
        overLayVisible == true ?  new CorrectWrongOverlay(isCorrect) : new Container(),
      ],
    );
  }
}