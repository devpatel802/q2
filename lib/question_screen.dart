import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
 import 'package:second/answer_button.dart';
import 'package:second/data/question.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {

  var currentQuestionIndex = 0;
  void answerQuestion(){
    //currentQuestionIndex = currentQuestionIndex + 1;
    //currentQuestionIndex += 1;
    setState(() {
    currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
             style: GoogleFonts.lato(
              color: Color.fromRGBO(240, 235, 227, 1.000),
              fontSize : 24,
              ),
             //const TextStyle(
               // color: Color.fromRGBO(240, 235, 227, 1.000),
              //),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
        
            ...currentQuestion.getShuffledAnswer().map((answer) {
              return AnswerButton(answerText: answer, onTap: answerQuestion,);
            } )          
          ],
        ),
      ),
    );
  }
}
