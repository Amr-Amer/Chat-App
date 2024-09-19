import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {

  TextEditingController textController = TextEditingController();


  MyTextField({super.key, required this.textController,});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textController,
      style:  const TextStyle(
        color: Colors.white
      ),
    );
  }
}
