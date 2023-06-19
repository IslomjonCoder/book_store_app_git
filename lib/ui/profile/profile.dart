import 'package:book_store_app_git/ui/profile/widgets/textfield.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/icons.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({
    super.key,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String selectedLanguage = "English";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 134.w, top: 71.h),
                    height: 122.h,
                    width: 122.w,
                    child: Image.asset(IconsApp.girl),
                  ),
                  Align(
                    heightFactor: 22.h,
                    alignment: Alignment.center,
                    child: const Text(
                      "Shakila Mohammadi",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          color: Colors.black),
                    ),
                  ),
                  Align(
                    heightFactor: 30.h,
                    alignment: Alignment.center,
                    child: const Text(
                      "0939 367 9027",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 13,
                          color: Colors.grey),
                    ),
                  ),
                  Positioned(
                      top: 250.h,
                      left: 40.w,
                      child: Row(
                        children: [
                          SizedBox(
                              height: 34.h,
                              width: 25.w,
                              child: SvgPicture.asset(IconsApp.user)),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(tr("personal_info"),),
                        ],
                      )),
                  Positioned(
                    top: 158.h,
                    left: 141.w,
                    child: Container(
                      height: 38.h,
                      width: 38.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                        border: Border.all(color: Colors.white, width: 5),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 168.h,
                    left: 151.w,
                    child: SvgPicture.asset(IconsApp.edit),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 45.w,
                    ),
                    padding: EdgeInsets.only(top: 280.h),
                    child: Column(
                      children: [
                        GlobalTextField(
                          hintText: tr("first_name"),
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        GlobalTextField(
                          hintText: tr("last_name"),
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        GlobalTextField(
                          hintText: tr("phone_number"),
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        GlobalTextField(
                          hintText: tr("password"),
                          keyboardType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.next,
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        GlobalTextField(
                          hintText: tr("email"),
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        GlobalTextField(
                          hintText: tr("rule"),
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.done,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Divider(
                thickness: 1,
                color: Colors.black.withOpacity(0.1),
              ),
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 45.w),
                      // height: 17.h,
                      // width: 16.w,
                      child: SvgPicture.asset(
                        IconsApp.language,
                      )),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    tr("change_language"),
                    style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 11),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                height: 37.h,
                width: 300.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xFFF1F1F1).withOpacity(0.5),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedLanguage = "English";
                          },);
                          context.setLocale(
                            const Locale("en"),
                          );
                        },
                        child: Container(
                          height: 27.h,
                          width: 144.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: selectedLanguage == "English" ? Colors.white : null,
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
                            child: Text(
                              "English (United States)",
                              style: TextStyle(
                                fontSize: 9.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedLanguage = "Uzbek";
                          }
                          );
                          context.setLocale(
                            const Locale("uz"),
                          );
                        },
                        child: Container(
                          height: 27.h,
                          width: 136.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: selectedLanguage == "Uzbek" ? Colors.white : null,
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Uzbek",
                              style: TextStyle(
                                fontSize: 9.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
