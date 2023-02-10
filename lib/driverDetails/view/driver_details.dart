import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_cart/addDriver/add_driver.dart';

import '../bloc/driver_details_bloc.dart';
import '../widget/driver_deatils_card.dart';

class DriverDetails extends StatelessWidget {
  DriverDetails({super.key});

  final driver_bloc = DriverDetailsBloc();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => driver_bloc,
      child: BlocListener<DriverDetailsBloc, DriverDetailsState>(
        listener: (context, state) {
          if (state is DriverSucessesState) {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => AddDriver(),
            ));
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text(
                  'Some error is occured',
                ),
              ),
            );
          }
        },
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(60.h),
            child: AppBar(
              backgroundColor: Colors.black54,
              automaticallyImplyLeading: false,
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back)),
              centerTitle: true,
              title: const Text('Driver List'),
            ),
          ),
          body: const DriverDetailsCard(
            img: 'assets/images/Ellipse.png',
            txt1: 'data',
            txt2: 'data',
            txt3: 'Delete',
          ),
          bottomNavigationBar: PreferredSize(
            preferredSize: const Size(
              double.infinity,
              60,
            ),
            child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 20.0.r, vertical: 20.0.r),
                child: SizedBox(
                  width: 250.w,
                  height: 40.h,
                  child: ElevatedButton(
                    onPressed: () => driver_bloc.add(DriverEvent()),
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xffed3839),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.r))),
                    child: Text(
                      'Add Driver',
                      style: TextStyle(color: Colors.white, fontSize: 16.sp),
                    ),
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
