import 'package:chat_app/constant/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyTextFormField extends StatefulWidget {

  String hintText;
  TextEditingController controller;

  MyTextFormField({super.key,required this.hintText,required this.controller});

  @override
  State<MyTextFormField> createState() => _MyTextFormFieldState();
}

class _MyTextFormFieldState extends State<MyTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.dg,
        horizontal: 10.dg
      ),
      child: TextFormField(
        controller: widget.controller,
        style: const TextStyle(color: AppColor.whiteColor),
        cursorColor: Colors.black,
        decoration: InputDecoration(
          hintText: widget.hintText,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: AppColor.blackColor)
            ),
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColor.blackColor),
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColor.blackColor),
              borderRadius: BorderRadius.circular(20),
            ),
            fillColor: Colors.grey.shade800,
            filled: true
        ),
      ),
    );
  }
}
