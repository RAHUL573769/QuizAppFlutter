import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  AnswerButton({super.key, required this.answerText, required this.onTap});
  final String answerText;
  final void Function() onTap;
  Widget build(BuildContext
  @overridecontext) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(answerText),
    );
  }
}
