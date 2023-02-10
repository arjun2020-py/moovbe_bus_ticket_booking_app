import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BusList extends StatelessWidget {
  const BusList({
    super.key,
  });

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
    );
  }
}
