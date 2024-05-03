import 'package:flutter/material.dart';
import 'package:second/data/question.dart';
import 'package:second/question_screen.dart';
import 'package:second/start_screen.dart';
import 'package:second/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers=[];
  var activeScreen = 'result-screen';

  void switchScreen() {
    setState(() {
      selectedAnswers=[];
      activeScreen = 'question-screen';
    });
  }



  void choseAnswer(String answer){
    selectedAnswers.add(answer);
    if(selectedAnswers.length == questions.length){
      setState(() {
        activeScreen = 'start-screen';
      });
    }
  }

  

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen(onSelectAnswer: choseAnswer,);
    }

  if (activeScreen == 'result-screen'){
   screenWidget= ResultScreen(chosenAnswer: selectedAnswers,);

  }
    return MaterialApp(
      home: Scaffold(
          body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color.fromRGBO(22, 121, 171, 1.000),
            Color.fromRGBO(7, 65, 115, 1.000),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: screenWidget,
      )),
    );
  }
}
