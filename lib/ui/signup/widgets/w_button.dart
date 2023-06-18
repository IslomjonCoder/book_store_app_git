import 'package:book_store_app_git/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class WButton extends StatelessWidget {
  const WButton({Key? key, required this.onTab, required this.title}) : super(key: key);

  final VoidCallback onTab;
  final String title;


  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: onTab,
      child: Container(
        height: 51.h,
        width: 300.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.r),
          color: ColorsApp.c_1E1E1E,
        ),
        child: Center(
          child: Text(title,style: TextStyle(fontSize: 20.spMin,fontWeight: FontWeight.w400,color: ColorsApp.c_FFFFFF),),
        ),
      ),
    );
  }
}
