import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../utils/colors.dart';

class BookGenreWidget extends StatelessWidget {
  const BookGenreWidget({super.key, required this.genreName, required this.isPressed, required this.onTap});
  final String genreName;
  final bool isPressed;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 26.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ZoomTapAnimation(
            onTap: onTap,
            child: Text(
              genreName, style: TextStyle(
                color: isPressed ? ColorsApp.c_000000 : ColorsApp.c_000000.withOpacity(0.2),
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                fontFamily: "Arial Rounded MT Bold"
            ),
            ),
          ),
          SizedBox(height: 7,),
          Container(height: 3.h, width: (genreName.length*6).w, decoration: BoxDecoration(
              color: isPressed ? ColorsApp.c_000000 : ColorsApp.c_FFFFFF,
              borderRadius: BorderRadius.circular(3.r)
          ),),
        ],
      ),
    );
  }
}
