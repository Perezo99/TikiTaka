import 'package:flutter/material.dart';
import 'package:tikitaka/utils/color_manager.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.isReadOnly = false,
  });
  final TextEditingController controller;
  final String hintText;
  final bool isReadOnly;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.red,
            blurRadius: 5,
            spreadRadius: 2,
          ),
        ],
      ),
      child: TextField(
        readOnly: isReadOnly,
        cursorColor: Colors.red,
        controller: controller,
        decoration: InputDecoration(
          fillColor: ColorManager.primaryColor,
          filled: true,
          labelStyle: TextStyle(color: ColorManager.redColor),
          hintText: hintText,
        ),
      ),
    );
  }
}
