import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddDriverTxtFiled extends StatelessWidget {
  AddDriverTxtFiled({super.key, required this.txt});
  final String txt;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autofocus: true,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: txt,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10.r))));
  }
}
