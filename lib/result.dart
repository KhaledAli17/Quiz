import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resultHandler;
  final String total;

  Result(this.resultScore,this.resultHandler,this.total);
  String get result_score {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'good';
    } else if (resultScore <= 12) {
      resultText = 'very good';
    } else if (resultScore <= 16) {
      resultText = 'Exellent';
    } else {
      resultText = 'bad';
    }
    return resultText;

  }

  @override
  Widget build(BuildContext context) {
    return Center(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            result_score,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Text(
            resultScore.toString()+' ' + ' ' + 'from' + ' ' + ' ' +  total,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(child: Text('Rest Quiz'), onPressed:resultHandler ,)
        ],
      ),
    );
  }
}
