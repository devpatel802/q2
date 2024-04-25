import 'dart:ui';

import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.answerText, required this.onTap});

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        backgroundColor: const Color.fromRGBO(93, 235, 215, 1.000),
        foregroundColor: const Color.fromRGBO(22, 121, 171, 1.000),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40),),
      ),
      child: Text(answerText,textAlign: TextAlign.center,),
    );
  }
}
