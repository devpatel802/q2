import 'package:flutter/material.dart';
import 'package:second/answer_button.dart';
import 'package:second/data/question.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0];
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
             style: const TextStyle(
                color: Color.fromRGBO(240, 235, 227, 1.000),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
        
            ...currentQuestion.getShuffledAnswer().map((answer) {
              return AnswerButton(answerText: answer, onTap: () {
        
              });
            } )          
          ],
        ),
      ),
    );
  }
}
