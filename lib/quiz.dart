import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz_ques extends StatelessWidget {

  final int index;
  final Function answerQues;
  final List<Map<String , Object>> ques;

  Quiz_ques({@required this.index,
             @required this.answerQues,
             @required this.ques});


  @override
  Widget build(BuildContext context) {
    return     Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        Questions(ques[index] ['questionText']),
          ...(ques[index]['answers'] as List<Map<String,Object>>).map((answer){
            return Answers(() => answerQues(answer['score']), answer['text']);
          })


    ],);
  }
}
