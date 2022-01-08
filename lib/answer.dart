import 'package:flutter/material.dart';


class Answers extends StatelessWidget {
  final Function answerSelect;
  final String answerText;
  Answers(this.answerSelect,this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child:    ElevatedButton(
        onPressed: answerSelect,
        child: Text(
          answerText,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
        ),
      ),
   
    );
  }
}
