import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:flutter/material.dart';

class MyBubbleSpecial extends StatelessWidget {

  String text;
  bool isSender;
  Color color;

  MyBubbleSpecial({super.key, required this.text, required this.isSender,required this.color});

  @override
  Widget build(BuildContext context) {
    return BubbleSpecialThree(
      isSender: isSender,
      text: text,
      color: color,
      tail: true,
      textStyle: const TextStyle(
          color: Colors.white,
          fontSize: 16
      ),
    );
  }
}
