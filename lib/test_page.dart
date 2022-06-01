import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';


class MyTestClass extends StatefulWidget {
  const MyTestClass({Key? key}) : super(key: key);

  @override
  State<MyTestClass> createState() => _MyTestClassState();
}

class _MyTestClassState extends State<MyTestClass> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white60)
          ),
          onPressed: (){
            Alert(
              context: context,
              type: AlertType.error,
              title: "RFLUTTER ALERT",
              desc: "Flutter is more awesome with RFlutter Alert.",
              buttons: [
                DialogButton(
                  child: Text(
                    "COOL",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () => Navigator.pop(context),
                  width: 120,
                )
              ],
            ).show();
          },
          child: Text("Click me!!!"),
        ),
      ),
    );
  }
}
