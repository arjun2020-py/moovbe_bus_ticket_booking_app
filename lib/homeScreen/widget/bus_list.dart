import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BusList extends StatelessWidget {
  const BusList({
    super.key,
    required this.img,
    required this.txt1,
    required this.txt2,
    required this.txt3,
  });

  final String img;
  final String txt1;
  final String txt2;
  final String txt3;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(top: 30.r),
            child: Card(
              child: ListTile(
                leading: ClipOval(child: Image.asset(
                    // 'assets/images/bus2.png',
                    img)),
                title: Text(
                  //'data'
                  txt1,
                ),
                subtitle: Text(
                  // 'data',
                  txt2,
                ),
                trailing: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    // 'Manage'
                    txt3,
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xffed3839)),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
