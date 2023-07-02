import 'package:app/questions.dart';
import 'package:app/start_screen.dart';
import 'package:flutter/material.dart';

class Quix extends StatefulWidget {
  const Quix({Key? key}) : super(key: key);

  @override
  State<Quix> createState() => _QuixState();
}

class _QuixState extends State<Quix> {
  Widget? activeScreen;
  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);

    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const Questions();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.deepPurpleAccent, Colors.deepPurple]),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
