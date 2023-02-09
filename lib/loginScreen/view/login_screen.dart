import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_cart/homeScreen/home_screen.dart';
import 'package:my_cart/loginScreen/bloc/login_screen_bloc.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final login_bloc = LoginScreenBloc();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => login_bloc,
      child: BlocListener<LoginScreenBloc, LoginScreenState>(
        listener: (context, state) {
          if (state is LoginScreenSucesses) {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ));
          } else {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text('Login is failed')));
          }
        },
        child: Scaffold(
          // backgroundColor: Colors.black,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(200.h),
            child: Stack(
              children: [
                AppBar(
                  backgroundColor: Colors.black,
                ),
                // SizedBox(
                //   width: 400,
                // ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffed3839),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(800.r),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.r, top: 110.r),
                  child: ListTile(
                    textColor: Colors.white,
                    title: Text(
                      'Welcome',
                      style: TextStyle(fontSize: 25.sp),
                    ),
                    subtitle: Text(
                      'Mange yours Bus and Drivers',
                      style: TextStyle(fontSize: 15.sp),
                    ),
                  ),
                )
              ],
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
                          hintText: 'Enter Username',
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
                          hintText: 'Enter Passerod',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r)))),
                ),
                SizedBox(
                  height: 200.h,
                ),
                SizedBox(
                  width: 250.w,
                  height: 40.h,
                  child: ElevatedButton(
                    onPressed: () => login_bloc.add(LoginEvent()),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xffed3839),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.r))),
                    child: Text(
                      'Get Started',
                      style: TextStyle(color: Colors.white, fontSize: 16.sp),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
