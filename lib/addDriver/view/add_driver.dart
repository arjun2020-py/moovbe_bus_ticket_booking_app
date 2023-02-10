import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../driverDetails/view/driver_details.dart';
import '../bloc/add_driver_bloc.dart';

class AddDriver extends StatelessWidget {
  AddDriver({super.key});

  final add_bloc = AddDriverBloc();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => add_bloc,
      child: BlocListener<AddDriverBloc, AddDriverState>(
        listener: (context, state) {
          if (state is AddSucessesState) {
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Driver sucessfully added')));
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DriverDetails(),
            ));
          } else {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text('Driver is not added')));
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
                  icon: Icon(Icons.arrow_back)),
              centerTitle: true,
              title: Text('Add Driver '),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20.r,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                      autofocus: true,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Enter Name',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r)))),
                ),
                // SizedBox(
                //   height: 5.r,
                // ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                      autofocus: true,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Enter License Number',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r)))),
                ),
                SizedBox(
                  height: 350.h,
                ),
              ],
            ),
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
                    onPressed: () => add_bloc.add(AddEvent()),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xffed3839),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.r))),
                    child: Text(
                      'Save',
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
