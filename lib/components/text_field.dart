//text field

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final int maxlength;
  final String validateText;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.maxlength,
    required this.validateText,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 1,
      maxLength: maxlength,
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        fillColor: Colors.grey.shade200,
        filled: true,
        hintText: hintText,
        counterText: "",
        hintStyle: TextStyle(color: Colors.grey[500]),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter the $validateText';
        }
        return null;
      },
    );
  }
}
