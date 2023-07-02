import 'package:flutter/material.dart';

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
          Text("The Question is"),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Answer 2"),
          ),
          Text("The Question is"),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Answer 3"),
          ),
          Text("The Question is"),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Answer 1"),
          )
        ],
      ),
    );
  }
}
