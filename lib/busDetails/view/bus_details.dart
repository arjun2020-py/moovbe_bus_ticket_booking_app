import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BusDetails extends StatelessWidget {
  const BusDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back)),
          centerTitle: true,
          title: const Text('KSRTC Swfit Scania P-series'),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              height: 100.h,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r)),
                color: Colors.black,
                child: ListTile(
                  title: Text(
                    'Rohit Sharama',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: [
                      const Text(
                        'Licence no:',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      const Text(
                        'value',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  trailing: Image.asset(
                    'assets/images/driver.png',
                    height: 350.h,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
