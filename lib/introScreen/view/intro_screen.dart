import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_cart/introScreen/bloc/intro_screen_bloc.dart';
import 'package:my_cart/loginScreen/view/login_screen.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({super.key});

  final intro_bloc = IntroScreenBloc();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => intro_bloc,
      child: BlocListener<IntroScreenBloc, IntroScreenState>(
        listener: (context, state) {
          if (state is IntroScreenSucesses) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ),
            );
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text('Welcome to moovbe')));
          } else {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text('some error')));
          }
        },
        child: Scaffold(
          backgroundColor: const Color(0xffed3839),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 100.h,
                ),
                Center(child: Image.asset('assets/images/logo.png')),
                SizedBox(
                  height: 50.h,
                ),
                SizedBox(
                  width: 250.w,
                  height: 40.h,
                  child: ElevatedButton(
                    onPressed: () => intro_bloc.add(IntroEvent()),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.r))),
                    child: Text(
                      'Get Started',
                      style:
                          TextStyle(color: Color(0xffed3839), fontSize: 16.sp),
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
