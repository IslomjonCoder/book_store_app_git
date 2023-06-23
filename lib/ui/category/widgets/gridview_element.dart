import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../repository/bookmarks.dart';
import '../../../utils/colors.dart';

class GridviewElement extends StatelessWidget {
  const GridviewElement({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    final genreBooks = BookmarkRepository.bookmarks;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 135.h,
          width: 101.w,
          child: Image.asset(
            genreBooks[index].url,
            fit: BoxFit.fill,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.r),
          ),
        ),
        SizedBox(height: 4.h,),
        Text(genreBooks[index].author, style: TextStyle(
            fontSize: 8.sp,
            fontFamily: "Arial Rounded MT Bold",
            fontWeight: FontWeight.w400,
            color: ColorsApp.c_000000.withOpacity(0.4)
        ),),
        Text(genreBooks[index].name, style: TextStyle(
            fontSize: 12.sp,
            fontFamily: "Arial Rounded MT Bold",
            fontWeight: FontWeight.w400,
            color: ColorsApp.c_000000
        ),)
      ],
    );
  }
}
