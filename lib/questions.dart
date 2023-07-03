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
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("The Question is"),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(answerText: 'Answer 1', onTap: () {}),
          const Text("The Question is"),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(answerText: 'Answer 2', onTap: () {}),
          const Text("The Question is"),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(answerText: 'Answer 3', onTap: () {}),
        ],
      ),
    );
  }
}
