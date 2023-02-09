import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_cart/busDetails/bus_details.dart';
import 'package:my_cart/driverDetails/view/driver_details.dart';
import 'package:my_cart/loginScreen/login_screen.dart';

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
                  icon: Icon(Icons.logout_sharp))
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
                          builder: (context) => BusDetails(),
                        )),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r)),
                      color: const Color(0xffed3839),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 65.r),
                            child: Text(
                              'Bus',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const Text(
                            'Manage your bus',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Image.asset(
                            'assets/images/image 2.png',
                            height: 100.h,
                          )
                        ],
                      ),
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
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.r)),
                          color: Colors.black,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10.h,
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 55.r),
                                child: Text(
                                  'Driver',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const Text(
                                'Manage your driver',
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Image.asset(
                                'assets/images/driver.png',
                                height: 100.h,
                                //color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return const Card(
                    child: ListTile(
                      title: Text('data'),
                    ),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
