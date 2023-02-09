import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_cart/addDriver/add_driver.dart';

class DriverDetails extends StatelessWidget {
  const DriverDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: AppBar(
          backgroundColor: Colors.black54,
          automaticallyImplyLeading: false,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
          centerTitle: true,
          title: Text('Driver List'),
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(top: 30.r),
            child: Card(
              child: ListTile(
                leading:
                    ClipOval(child: Image.asset('assets/images/Ellipse.png')),
                title: Text('data'),
                subtitle: Text('data'),
                trailing: ElevatedButton(
                  onPressed: () {},
                  child: Text('Delete'),
                  style: ElevatedButton.styleFrom(primary: Color(0xffed3839)),
                ),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: PreferredSize(
        preferredSize: const Size(
          double.infinity,
          60,
        ),
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.r, vertical: 20.0.r),
            child: SizedBox(
              width: 250.w,
              height: 40.h,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => AddDriver(),
                  ));
                },
                style: ElevatedButton.styleFrom(
                    primary: Color(0xffed3839),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.r))),
                child: Text(
                  'Add Driver',
                  style: TextStyle(color: Colors.white, fontSize: 16.sp),
                ),
              ),
            )),
      ),
    );
  }
}
