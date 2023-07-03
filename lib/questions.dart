import 'package:app/data/questions.dart';
import 'package:flutter/material.dart';

import 'answerButton.dart';

class Questions extends StatefulWidget {
  const Questions({Key? key}) : super(key: key);

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  @override
  Widget build(BuildContext context) {
    final currentQuestions = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(currentQuestions.text),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(answerText: currentQuestions.answers[0], onTap: () {}),
          AnswerButton(answerText: currentQuestions.answers[1], onTap: () {}),
          AnswerButton(answerText: currentQuestions.answers[2], onTap: () {}),
          AnswerButton(answerText: currentQuestions.answers[3], onTap: () {}),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
