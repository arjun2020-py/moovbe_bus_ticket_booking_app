import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardWidget extends StatelessWidget {
  const CardWidget(
      {super.key,
      required this.text1,
      required this.text2,
     // required height,
      required this.image,
      required this.color});
  
  
  
  final String text1;
  final String text2;
  //final double height;
  final String image;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
      color: color,
      // const Color(0xffed3839),
      child: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.only(right: 65.r),
            child: Text(
              //'Bus',
              text1,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            // 'Manage your bus',
            text2,
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 20.h,
          ),
          Image.asset(
            //'assets/images/image 2.png',
            image,
            height: 100.h,
          )
        ],
      ),
    );
  }
}
