import 'package:book_store_app_git/ui/signup/signup.dart';
import 'package:book_store_app_git/utils/colors.dart';
import 'package:book_store_app_git/utils/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: height,width: width,
                /// qarang Farrux aka katta lashganda rasm xunuk bo`lib qolyabdiku
                /// shunaqa boladida siz ozi ja xammasiga tuwadigan qimoqchisizda uni xozir iloji yo manimcha sasab anu kitobdegi svg ham razmeri ozgarmayapdi
                /// yechim sifatida shunga o`xshagan logika
                /// xozi buni qande unga togirlesiz
                /// hayronman
                /// owancun xozircha ja chuqurlashmenda ozi bitta telefonga tuwib tursin xozircha
                /// bo`ldi tushunarli shunday qilaveramiz
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(IconsApp.background),
                        fit: BoxFit.fill),
                    // color: Colors.red,
                ),
                // child: Image.asset(
                //   IconsApp.background,
                //   fit: BoxFit.cover,
                // width: width,
                // height: height,
                // ),
              ),
              SizedBox(
                height: height,
                width: width,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 200.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "B",
                            style: TextStyle(
                                fontSize: 70.sp,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Inter",
                                color: ColorsApp.c_1E1E1E),
                          ),
                          SizedBox(
                            width: 10.h,
                          ),
                          SvgPicture.asset(IconsApp.iconBook),
                          SizedBox(
                            width: 10.h,
                          ),
                          Text(
                            "K",
                            style: TextStyle(
                                fontSize: 70.sp,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Inter",
                                color: ColorsApp.c_1E1E1E),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "IO Book Store",
                            style: TextStyle(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w400,
                                fontFamily: "IM FELL Great Primer SC",
                                color: ColorsApp.c_1E1E1E),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 400.h,
                      ),
                      ZoomTapAnimation(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUpPage()));
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 16.h, horizontal: 24.w),
                          height: 54.h,
                          width: 315.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.r),
                            color: ColorsApp.c_F1F1F1,
                          ),
                          child: Row(
                            children: [
                              Text(
                                "Get start",
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w400,
                                    color: ColorsApp.c_1E1E1E,
                                    fontFamily: "Arial Rounded MT Bold"),
                              ),
                              const Spacer(),
                              Image.asset(IconsApp.next1),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
