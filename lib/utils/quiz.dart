import './question.dart';

class Quiz{
  List <Question> _questions;
  int _currenQuestionIndex = -1;
  int _score = 0;

  Quiz(this._questions){
      _questions.shuffle();

  }

  int get score => _score;
  int get length => _questions.length;
  int get questionNumber => _currenQuestionIndex + 1;
  List<Question> get questions => _questions;

  Question get nextQuestion{
    _currenQuestionIndex++;
    if (_currenQuestionIndex >=  length) return null;
    return _questions[_currenQuestionIndex];
  }

  void answer(bool isCorrect){
    if(isCorrect) _score++;
  }
}