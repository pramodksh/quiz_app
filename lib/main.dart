import 'package:flutter/material.dart';
import 'quiz_page.dart';
import 'test_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Widget makeTile({required Color boxColor}) {
    return Expanded(
      child: TextButton(
        onPressed: () {},
        child: Text(""),
        style: TextButton.styleFrom(
          backgroundColor: boxColor,
        ),
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black26,
          appBar: AppBar(
            title: Text("Xylophone"),
            leading: Icon(Icons.phone_android_outlined),
          ),
          body: Padding(
              padding: EdgeInsets.all(50),
              // child: MyTestClass()
              child: QuizPage()
          )
      ),
    );
  }
}
