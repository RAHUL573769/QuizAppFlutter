import 'package:app/data/questions.dart';
import 'package:flutter/material.dart';

import 'answerButton.dart';

class Questions extends StatefulWidget {
  const Questions({Key? key}) : super(key: key);

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  var currentQuestionIndex = 0;
  void answerQuestions() {
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestions = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(currentQuestions.text),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestions.answers
                // .getShuffledAnswers()
                .map((answer) => AnswerButton(
                      answerText: answer,
                      onTap: answerQuestions,
                    )),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
