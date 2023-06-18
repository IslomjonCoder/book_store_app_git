import 'package:book_store_app_git/ui/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../utils/colors.dart';
import '../signup/widgets/w_button.dart';
import '../signup/widgets/w_input.dart';
import '../signup/widgets/w_title.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 46.h,),
            Text(
              'Login',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Inter'),
            ),
            SizedBox(height: 11.h),
           const Divider(),
            Expanded(child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                const WTitle(title: "Login Your Account", subtitle: "Please enter your info for login account"),
                SizedBox(height: 151.h,),
                const WInput(hintText: "Phone num"),
                SizedBox(height: 30.h,),
                const WInput(hintText: "Last name"),
                SizedBox(height: 30.h,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 46.w),
                  child: Row(
                    children: [
                     const Spacer(),
                      ZoomTapAnimation(
                          onTap: (){},
                          child: Text("Forget password?",style: TextStyle(fontSize: 11.sp,fontWeight: FontWeight.w600,color: ColorsApp.c_FF0000.withOpacity(.6),fontFamily: "Inter"),)),
                    ],
                  ),
                ),
                SizedBox(height: 26.h,),
                WButton(onTab: (){}, title: "Sign up"),
                SizedBox(height: 260.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don’t have an account? ",style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w400,color: ColorsApp.c_000000.withOpacity(0.6,),fontFamily: "Inter"),),
                    ZoomTapAnimation(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const SignUpPage()));
                        },
                        child: Text("Signup",style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w700,color: ColorsApp.c_FF0000.withOpacity(.6)),))
                  ],
                )
              ],
            ))

          ],
        ),
      ),
    );
  }
}
