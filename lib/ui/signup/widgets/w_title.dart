import 'package:book_store_app_git/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WTitle extends StatelessWidget {
  const WTitle({Key? key, required this.title, required this.subtitle}) : super(key: key);

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title,style:  TextStyle(fontSize: 22.spMin,fontWeight: FontWeight.w600,color: ColorsApp.c_000000,fontFamily: "Inter"),),
        SizedBox(height: 4.h,),
        Text(subtitle,style: TextStyle(fontSize: 11.spMin,fontWeight: FontWeight.w400,color: ColorsApp.c_000000.withOpacity(.6)),),
      ],
    );
  }
}
