import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../loginScreen/view/login_screen.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key, required this.img});
  final String img;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.black,
      centerTitle: true,
      title: Padding(
        padding: EdgeInsets.only(top: 30.r),
        child: Image.asset(
          img,
          height: 250.h,
        ),
      ),
      actions: [
        IconButton(
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                )),
            icon: const Icon(Icons.logout_sharp))
      ],
    );
  }
}
