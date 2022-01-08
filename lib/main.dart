import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';


void main() => runApp(Quiz());

class Quiz extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  final _questions = const [
    {
      'questionText': 'ما هي أكبر هضبة في العالم؟',
      'answers': [
        {'text': 'الألب', 'score': 0},
        {'text': 'التبت', 'score': 1},
        {'text': 'الهيمالايا', 'score': 0},
        {'text': 'الحمراء', 'score': 0},
      ],
    },
    {
      'questionText': 'من هي أول امرأة فازت بجائزة نوبل؟',
      'answers': [
        {'text': 'سميرة موسى', 'score': 0},
        {'text': 'مارى كورى', 'score': 1},
        {'text': 'أم أحمد', 'score': 0},
        {'text': 'ايمى كارتر', 'score': 0},
      ],
    },
    {
      'questionText': 'كم عدد أحرف اللغة الإنجليزية؟',
      'answers': [
        {'text': '20', 'score': 0},
        {'text': '26', 'score': 1},
        {'text': '28', 'score': 0},
        {'text': '25', 'score': 0},
      ],
    },
    {
      'questionText': 'ما هي الدولة التي اشتهرت بالسوشي؟',
      'answers': [
        {'text': 'الصين', 'score': 0},
        {'text': 'كوريا', 'score': 0},
        {'text': 'اندونسيا', 'score': 0},
        {'text': 'اليابان', 'score': 1},
      ],
    },
    {
      'questionText': 'ما هو أعلى جبل في العالم؟',
      'answers': [
        {'text': 'ايفرست', 'score': 1},
        {'text': 'الألب', 'score': 0},
        {'text': 'الهيمالايا', 'score': 0},
        {'text': 'البحر الأسود', 'score': 0},
      ],
    },
    {
      'questionText': 'ما هي عاصمة اسبانيا؟',
      'answers': [
        {'text': 'برشلونة', 'score': 0},
        {'text': 'كتالونيا', 'score': 0},
        {'text': 'ميونخ', 'score': 0},
        {'text': 'مدريد', 'score': 1},
      ],
    },
    {
      'questionText': 'ما هي أكبر قارة في العالم من حيث المساحة؟',
      'answers': [
        {'text': 'افريقيا', 'score': 0},
        {'text': 'اوروبا', 'score': 0},
        {'text': 'اسيا', 'score': 1},
        {'text': 'استراليا', 'score': 0},
      ],
    },
    {
      'questionText': 'ما هو أعلى شلالات العالم؟',
      'answers': [
        {'text': 'انجل', 'score': 1},
        {'text': 'ماكس', 'score': 0},
        {'text': 'النمسا', 'score': 0},
        {'text': 'المحيطية', 'score': 0},
      ],
    },
    {
      'questionText': 'ما هي أكبر دولة في العالم من حيث المساحة؟',
      'answers': [
        {'text': 'السودان', 'score': 0},
        {'text': 'امريكا', 'score': 0},
        {'text': 'روسيا', 'score': 1},
        {'text': 'الصين', 'score': 0},
      ],
    },
    {
      'questionText': 'ما هو البحر الذي يفصل بين دولتي تركيا واليونان؟',
      'answers': [
        {'text': ' ايجه', 'score': 1},
        {'text': 'الميت', 'score': 0},
        {'text': 'المتوسط', 'score': 0},
        {'text': 'دجلة', 'score': 0},
      ],
    },
    {
      'questionText': 'ماذا يُسمى كوكب المريخ؟',
      'answers': [
        {'text': ' الكوكب المستقبلى', 'score': 0},
        {'text': 'الكوكب الأحمر', 'score': 1},
        {'text': 'الكوكب المشرق', 'score': 0},
        {'text': 'الكوكب القادم', 'score': 0},
      ],
    },
    {
      'questionText': 'كم يبلغ عمر الأرض؟',
      'answers': [
        {'text': '  5.534 ملايين سنة', 'score': 0},
        {'text': ' 7.453 ملايين سنة', 'score': 0},
        {'text': ' 4.543 ملايين سنة', 'score': 1},
        {'text': ' 3.698 ملايين سنة', 'score': 0},
      ],
    },
    {
      'questionText': 'ما هما العضوان اللذان يستمران بالنمو طوال حياة الإنسان؟',
      'answers': [
        {'text': '  الأنف و الأذن', 'score': 1},
        {'text': ' الأصابع و الأقدام', 'score': 0},
        {'text': ' الأذن و الأصابع', 'score': 0},
        {'text': ' اليد و القدم', 'score': 0},
      ],
    },
    {
      'questionText': 'ما هي المادة التي تُشكّل 80% من حجم دماغ الإنسان؟',
      'answers': [
        {'text': '  الماء', 'score': 1},
        {'text': ' الدم', 'score': 0},
        {'text': ' الهيموجلوبين', 'score': 0},
        {'text': ' الكالسيوم', 'score': 0},
      ],
    },
    {
      'questionText': 'ما هو أكثر عنصر كيميائي متواجد في جسم الإنسان؟',
      'answers': [
        {'text': '  الكالسيوم', 'score': 0},
        {'text': ' الحديد', 'score': 0},
        {'text': ' ثانى اكسيد الكربون', 'score': 0},
        {'text': ' الاكسجين', 'score': 1},
      ],
    },
    {
      'questionText': 'ما هو الغذاء الأساسي لثلث سكّان العالم؟',
      'answers': [
        {'text': '  الخبز', 'score': 0},
        {'text': ' الشعير', 'score': 0},
        {'text': ' المكرونة', 'score': 0},
        {'text': ' الارز', 'score': 1},
      ],
    },
  ];


  var _questionIndex = 0;
  var _totalScore = 0;
  String total = '16';
  void _restQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }
  void _finish(){
    print('agin');
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;

    });
    print(_questionIndex);


    if (_questionIndex < _questions.length) {
      print('we have more');
    } else {
      print('not more');
    }



    //  print('answer select');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz_ques(
                index: _questionIndex,
                answerQues: _answerQuestion,
                ques: _questions)
            : Result(_totalScore, _restQuiz,total),

      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
