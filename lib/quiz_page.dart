import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'quiz_brain.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];

  QuizBrain quizBrain = QuizBrain();

  void addToScoreKeeper(bool userAnswer) {
    setState(() {
      // _questionNumber < _questionBank.length - 1
      print(
          "${quizBrain.getQuestionNumber()} != ${quizBrain.getLengthOfList()}");
      if (quizBrain.getQuestionNumber() != quizBrain.getLengthOfList() - 1) {
        if (userAnswer) {
          scoreKeeper.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          scoreKeeper.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
        quizBrain.nextQuestion();
      } else {
        if (userAnswer) {
          scoreKeeper.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          scoreKeeper.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
        quizBrain.nextQuestion();
        Alert(
          context: context,
          type: AlertType.error,
          title: "RFLUTTER ALERT",
          desc: "Flutter is more awesome with RFlutter Alert.",
          buttons: [
            DialogButton(
              child: Text(
                "Clear",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {
                setState(() {
                  quizBrain.resetQuestionNumber();
                  scoreKeeper = [];
                  Navigator.pop(context);
                });
              },
              width: 120,
            )
          ],
        ).show();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
            onPressed: () {
              setState(() {
                scoreKeeper = [];
              });
            },
            child: Text("Reset")),
        Expanded(
          flex: 5,
          child: Center(
            child: Text(
              quizBrain.getQuestionText(),
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.white60),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextButton(
              onPressed: () {
                bool correctAnswer = quizBrain.getQuestionAnswer();
                addToScoreKeeper(correctAnswer);
              },
              child: Text(
                "True",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: EdgeInsets.symmetric(vertical: 30)),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {
                  bool correctAnswer = quizBrain.getQuestionAnswer();
                  addToScoreKeeper(correctAnswer);
                },
                child: Text(
                  "False",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: EdgeInsets.symmetric(vertical: 30),
                )),
            Row(children: scoreKeeper)
          ],
        )
      ],
    );
  }
}
