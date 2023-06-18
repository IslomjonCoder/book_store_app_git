import 'package:book_store_app_git/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WInput extends StatelessWidget {
  const WInput({Key? key, required this.hintText}) : super(key: key);

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 46.w),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 11.sp,
            fontWeight: FontWeight.w400,
            color: ColorsApp.c_000000.withOpacity(.6),
            fontFamily: "Inter",
          ),
        ),
        style:  TextStyle(
            fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: ColorsApp.c_000000,
          fontFamily: "Inter",
        ),
      ),
    );
  }
}
