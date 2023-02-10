import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginTextFiled extends StatelessWidget {
   LoginTextFiled({
    super.key,
    required this.text
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autofocus: true,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: 'Enter Username',
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10.r))));
  }
}
