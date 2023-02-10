import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../bloc/driver_details_bloc.dart';

class CustomButtonWidget extends StatelessWidget {
  CustomButtonWidget({
    super.key,
    required this.driver_bloc,
    required this.txt,
    required this.color
  });
  final Color color;
  final String txt;

  final DriverDetailsBloc driver_bloc;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => driver_bloc.add(DriverEvent()),
      style: ElevatedButton.styleFrom(
          primary: const Color(0xffed3839),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r))),
      child: Text(
        txt,
       // 'Add Driver',
        style: TextStyle(color: color, fontSize: 16.sp),
      ),
    );
  }
}
