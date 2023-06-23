import 'package:book_store_app_git/ui/category/widgets/gridview_element.dart';
import 'package:book_store_app_git/utils/colors.dart';
import 'package:book_store_app_git/utils/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../repository/bookmarks.dart';
import 'widgets/book_genre_widget.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  final genreBooks = BookmarkRepository.bookmarks;
  int _bookmarksCount = -1;
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Column(
      children: [
        SizedBox(height: 61.h,),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 26.w),
              child: Container(
                width: 30.w,
                height: 27.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: ColorsApp.c_1E1E1E),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 3.5, horizontal: 5),
                  child: SvgPicture.asset(IconsApp.categoryIcon),
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 14.h,),
        SizedBox(
          height: 34.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              BookGenreWidget(genreName: "Classic", isPressed: selected == 0, onTap: () {
                setState(() {
                  selected = 0;
                });
              },),
              BookGenreWidget(genreName: "Horror", isPressed: selected == 1, onTap: () {
                setState(() {
                  selected = 1;
                });
              },),
              BookGenreWidget(genreName: "Romance", isPressed: selected == 2, onTap: () {
                setState(() {
                  print(2);
                  selected = 2;
                });
              },),
              BookGenreWidget(genreName: "Short stories", isPressed: selected == 3, onTap: () {
                setState(() {
                  selected = 3;
                });
              },),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 26.w),
            child: Column(
              children: [
                SizedBox(height: 26.h),
                SizedBox(
                  height: height * 45 / 844,
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
                Expanded(
                  child: (_bookmarksCount == 0)
                      ? Center(child: Text('Bookmarks is empty'))
                      : GridView.builder(
                    itemCount: genreBooks.length,
                    gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 101 / 180,
                        crossAxisSpacing: 18.w,
                        mainAxisSpacing: 10.h),
                    itemBuilder: (context, index) {
                      return GridviewElement(index: index);
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
