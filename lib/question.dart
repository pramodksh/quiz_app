import 'quiz_page.dart';

class Question{
  String questionText;
  bool questionAnswer;

  Question({required this.questionText, required this.questionAnswer}){
    print("Constructor called!!");
  }
}