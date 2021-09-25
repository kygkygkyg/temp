import 'package:flutter/material.dart';


void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        textTheme: TextTheme(),
      ),
      home: WelcomeScreen(),
      //QuestionsIndex()
    );
  }
}

