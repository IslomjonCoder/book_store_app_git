import 'package:book_store_app_git/ui/homescreen/homescreen.dart';
import 'package:book_store_app_git/ui/login/login.dart';
import 'package:book_store_app_git/ui/signup/widgets/w_button.dart';
import 'package:book_store_app_git/ui/signup/widgets/w_input.dart';
import 'package:book_store_app_git/ui/signup/widgets/w_title.dart';
import 'package:book_store_app_git/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 46.h,
            ),
            Text(
              'sign up',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 17.spMin,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Inter'),
            ),
            SizedBox(height: 11.h),
            const Divider(),

            /// Farrux aka xouv
            /// bo`lmadi a
            /// owanchun listView yaxshi masmidi
            /// ha mayli shu ham yaxshi nima deysiz
            /// xozi boldimi endi
            /// bilmadim boshiq qotdi
            /// anu splashdegi rasmgayam fit ga cover berib korinda
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 46.w),
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    const WTitle(
                        title: "Create Your Account",
                        subtitle: "Please enter your info for create account"),
                    SizedBox(
                      height: 40.h,
                    ),
                    const WInput(hintText: "First name"),
                    SizedBox(
                      height: 25.h,
                    ),
                    const WInput(hintText: "Last name"),
                    SizedBox(
                      height: 25.h,
                    ),
                    const WInput(hintText: "Phone num"),
                    SizedBox(
                      height: 25.h,
                    ),
                    const WInput(hintText: "Password"),
                    SizedBox(
                      height: 25.h,
                    ),
                    const WInput(hintText: "Email"),
                    SizedBox(
                      height: 25.h,
                    ),
                    const WInput(hintText: "Rule"),
                    SizedBox(
                      height: 50.h,
                    ),
                    WButton(
                        onTab: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MyHomePage()));
                        },
                        title: "Sign up"),
                    SizedBox(
                      height: 154.h,
                    ),
                    // Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account? ",
                          style: TextStyle(
                              fontSize: 13.spMin,
                              fontWeight: FontWeight.w400,
                              color: ColorsApp.c_000000.withOpacity(
                                0.6,
                              ),
                              fontFamily: "Inter"),
                        ),
                        ZoomTapAnimation(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LoginPage()));
                            },
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 13.spMin,
                                  fontWeight: FontWeight.w700,
                                  color: ColorsApp.c_FF0000.withOpacity(.6)),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
