import 'question.dart';
class QuizBrain {

  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question(
        questionText: 'How many colors are there in a rainbow? FALSE',
        questionAnswer: false),
    Question(
        questionText: 'What does a thermometer measure? TRUE',
        questionAnswer: true),
    Question(
        questionText: 'How many wheels does a tricycle have? TRUE',
        questionAnswer: true),
    Question(
        questionText : "Prince Harry is taller than Prince William, FALSE",
        questionAnswer : false),
    Question(
        questionText : "The star sign Aquarius is represented by a tiger",
        questionAnswer : true),
    // Question(
    //     questionText : "Meryl Streep has won two Academy Awards FALSE",
    //     questionAnswer : false),
    // Question(
    //     questionText : "Marrakesh is the capital of Morocco",
    //     questionAnswer : true),
    // Question(
    //     questionText : "Idina Menzel sings 'let it go' 20 times in 'Let It Go' from Frozen",
    //     questionAnswer : true),
    // Question(
    //     questionText : "Waterloo has the greatest number of tube platforms in London",
    //     questionAnswer : true),
    // Question(
    //     questionText : "M&M stands for Mars and Moordale",
    //     questionAnswer : true),
    // Question(
    //     questionText : "Gin is typically included in a Long Island Iced Tea FALSE",
    //     questionAnswer : false),
    // Question(
    //     questionText : "The unicorn is the national animal of Scotland",
    //     questionAnswer : true),
    // Question(
    //     questionText : "There are two parts of the body that can't heal themselves",
    //     questionAnswer : true),
    // Question(
    //     questionText : "Howard Donald is the oldest member of Take That FALSE",
    //     questionAnswer : false,),
  ];

  String getQuestionText()
  {
    return _questionBank[_questionNumber].questionText;
  }


  bool getQuestionAnswer()
  {
    return _questionBank[_questionNumber].questionAnswer;
  }


  int getLengthOfList()
  {
    return _questionBank.length;
  }

  int getQuestionNumber()
  {
    return _questionNumber;
  }


  void nextQuestion()
  {
    if(_questionNumber < _questionBank.length - 1)
    {
      _questionNumber++;
    }
  }


  void resetQuestionNumber(){
    _questionNumber = 0;
    print("Values reset!!!");
  }
}

