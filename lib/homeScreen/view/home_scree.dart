import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_cart/busDetails/bus_details.dart';
import 'package:my_cart/driverDetails/view/driver_details.dart';
import 'package:my_cart/loginScreen/login_screen.dart';

import '../widget/card_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(65.h),
          child: AppBar(
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
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.only(top: 30.r),
                    child: Card(
                      child: ListTile(
                        leading: ClipOval(
                            child: Image.asset('assets/images/bus2.png')),
                        title: const Text('data'),
                        subtitle: const Text('data'),
                        trailing: ElevatedButton(
                          onPressed: () {},
                          child: const Text('Manage'),
                          style: ElevatedButton.styleFrom(
                              primary: const Color(0xffed3839)),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
