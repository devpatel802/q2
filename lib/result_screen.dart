
import 'package:flutter/material.dart';
import 'package:second/data/question.dart';
import 'package:second/question_summary.dart';

class ResultScreen extends StatelessWidget{
  const ResultScreen({super.key, required this.chosenAnswer});

final List<String>chosenAnswer;

List <Map<String, Object>> getSummaryData(){
  final List <Map<String, Object>> summary =[];
  
  for (int i=0; i <chosenAnswer.length; i++){
    summary.add({
      'question_index': i,
      'question': questions[i].text,
      'correct_answer':questions[i].answer[0],
      'user_answer': chosenAnswer[i]
    });
  }
  
  return summary;
}

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Your Answered X out of Y questions correctly!'),
            const SizedBox(height: 30,),
            QuestionSummary(getSummaryData()),
            TextButton(onPressed: () {}, child: const Text('Restart quiz'),)
        ],),
        ),);
    
  }
}