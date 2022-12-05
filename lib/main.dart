import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var QuetionIndex = 0;
  var questions = ["What's your fav color?", "What's your fav animal?"];

  void answerQuestion() {
    setState(() {
      QuetionIndex = QuetionIndex + 1;
      QuetionIndex %= questions.length;
    });
    print(QuetionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(questions[QuetionIndex]),
            ElevatedButton(
              child: Text('answer1'),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: Text('answer2'),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: Text('answer3'),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
