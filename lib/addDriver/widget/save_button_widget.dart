import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../bloc/add_driver_bloc.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({
    super.key,
    required this.add_bloc,
  });

  final AddDriverBloc add_bloc;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => add_bloc.add(AddEvent()),
      style: ElevatedButton.styleFrom(
          primary: Color(0xffed3839),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6.r))),
      child: Text(
        'Save',
        style: TextStyle(color: Colors.white, fontSize: 16.sp),
      ),
    );
  }
}
