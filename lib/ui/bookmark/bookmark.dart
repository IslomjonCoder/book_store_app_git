import 'package:book_store_app_git/repository/bookmarks.dart';
import 'package:book_store_app_git/repository/books.dart';
import 'package:book_store_app_git/utils/colors.dart';
import 'package:book_store_app_git/utils/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class BookmarkPage extends StatefulWidget {
  BookmarkPage({Key? key}) : super(key: key);

  @override
  State<BookmarkPage> createState() => _BookmarkPageState();
}

class _BookmarkPageState extends State<BookmarkPage> {
  final bookmarks = BookmarkRepository.bookmarks;
  int _bookmarksCount = -1;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 46.h),
            Text(
              'My book',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Inter'),
            ),
            SizedBox(height: 11.h),
            Divider(),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 26.w),
                child: Column(
                  children: [
                    SizedBox(height: 36.h),
                    SizedBox(
                      height: height * 35 * 2 / 844,
                      child: TextField(
                        textAlignVertical: TextAlignVertical.center,
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: ColorsApp.c_000000,
                            fontFamily: 'Inter'),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 5),
                            prefixIcon: Container(
                                padding: EdgeInsets.all(10),
                                child: SvgPicture.asset(
                                  IconsApp.search,
                                )),
                            hintText: 'Search by name, author, bookworm...',
                            hintStyle: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: ColorsApp.c_000000.withOpacity(.4),
                                fontFamily: 'Inter'),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7),
                                borderSide: BorderSide(
                                    width: 1,
                                    color: ColorsApp.c_000000.withOpacity(.3))),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7),
                                borderSide: BorderSide(
                                    width: 1,
                                    color:
                                        ColorsApp.c_000000.withOpacity(.7)))),
                      ),
                    ),
                    SizedBox(height: 28.h),
                    Expanded(
                      child: (_bookmarksCount == 0)
                          ? Center(child: Text('Bookmarks is empty'))
                          : GridView.builder(
                              itemCount: bookmarks.length,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      childAspectRatio: 101 / 135,
                                      crossAxisSpacing: 18.w,
                                      mainAxisSpacing: 18.h),
                              itemBuilder: (context, index) {
                                return Container(
                                  clipBehavior: Clip.antiAlias,
                                  child: Stack(
                                    fit: StackFit.expand,
                                    children: [
                                      Image.asset(
                                        bookmarks[index].url,
                                        fit: BoxFit.fill,
                                      ),
                                      Positioned(
                                        bottom: 6,
                                        right: 6,
                                        child: ZoomTapAnimation(
                                          onTap: () {
                                            setState(() {
                                              BookmarkRepository.bookmarks
                                                  .removeAt(index);
                                              _bookmarksCount =
                                                  bookmarks.length;
                                            });
                                          },
                                          child: Container(
                                            height: 27.h,
                                            width: 27.h,
                                            padding: EdgeInsets.all(5),
                                            child: SvgPicture.asset(
                                                IconsApp.bookmarkBlack),
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: ColorsApp.c_FFFFFF),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7.r),
                                  ),
                                );
                              },
                            ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
