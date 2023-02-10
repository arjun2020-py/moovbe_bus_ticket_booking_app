import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../loginScreen/view/login_screen.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.black,
      centerTitle: true,
      title: Padding(
        padding: EdgeInsets.only(top: 30.r),
        child: Image.asset(
          'assets/images/logo.png',
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
