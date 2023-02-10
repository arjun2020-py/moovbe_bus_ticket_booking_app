import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_cart/busDetails/bus_details.dart';
import 'package:my_cart/driverDetails/view/driver_details.dart';

import '../widget/bus_list.dart';
import '../widget/card_widget.dart';
import '../widget/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(65.h),
          child: const HomeAppbar(
            img: 'assets/images/logo.png',
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 180.h,
                  width: 170.w,
                  child: InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BusDetails(),
                        )),
                    child: const CardWidget(
                      text1: 'Bus',
                      text2: 'Manage your bus',
                      image: 'assets/images/image 2.png',
                      color: Color(0xffed3839),
                    ),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 180.h,
                      width: 170.w,
                      child: InkWell(
                          onTap: () =>
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => DriverDetails(),
                              )),
                          child: const CardWidget(
                            text1: 'Driver',
                            text2: 'Manage your driver',
                            image: 'assets/images/driver.png',
                            color: Colors.black,
                          )),
                    ),
                  ],
                )
              ],
            ),
            const BusList(
              img: 'assets/images/bus2.png',
              txt1: 'data',
              txt2: 'data',
              txt3: 'Mange',
            ),
          ],
        ));
  }
}
