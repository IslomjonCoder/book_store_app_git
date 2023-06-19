import 'package:book_store_app_git/ui/bookmark/bookmark.dart';
import 'package:book_store_app_git/ui/cate1/cate1.dart';
import 'package:book_store_app_git/ui/home/home.dart';
import 'package:book_store_app_git/ui/profile/profile.dart';
import 'package:book_store_app_git/utils/icons.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'utils/colors.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
      EasyLocalization(
          supportedLocales: [Locale('en',), Locale('uz',)],
          path: 'assets/translations',
          fallbackLocale: Locale('en',),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        theme: ThemeData(appBarTheme: AppBarTheme(color: ColorsApp.c_FFFFFF)),
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 2;
  List pages = [HomePage(), CategoryPage(), BookmarkPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: pages[_selectedIndex],
        bottomNavigationBar: FlashyTabBar(
            selectedIndex: _selectedIndex,
            items: [
              FlashyTabBarItem(
                  // activeColor: ColorsApp.c_000000,
                  icon: SvgPicture.asset(IconsApp.home, height: 25.h),
                  title: Text(
                    'Home',
                    style: TextStyle(fontSize: 12.spMin),
                  )),
              FlashyTabBarItem(
                  // activeColor: ColorsApp.c_000000,
                  icon: SvgPicture.asset(IconsApp.category, height: 25.h),
                  title: Text(
                    'Category',
                    style: TextStyle(fontSize: 12.spMin),
                  )),
              FlashyTabBarItem(
                  // activeColor: ColorsApp.c_000000,
                  icon: SvgPicture.asset(
                    IconsApp.bookmark,
                    height: 25.h,
                  ),
                  title: Text(
                    'Bookmark',
                    style: TextStyle(fontSize: 12.spMin),
                  )),
              FlashyTabBarItem(
                  // activeColor: ColorsApp.c_000000,
                  icon: SvgPicture.asset(IconsApp.profile, height: 25.h),
                  title: Text(
                    'Profile',
                    style: TextStyle(fontSize: 12.spMin),
                  )),
            ],
            onItemSelected: (index) {
              setState(() {
                _selectedIndex = index;
              });
            }));
  }
}
