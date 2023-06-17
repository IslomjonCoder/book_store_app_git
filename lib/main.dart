import 'package:book_store_app_git/ui/bookmark/bookmark.dart';
import 'package:book_store_app_git/ui/cate1/cate1.dart';
import 'package:book_store_app_git/ui/home/home.dart';
import 'package:book_store_app_git/ui/profile/profile.dart';
import 'package:book_store_app_git/utils/icons.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(appBarTheme: AppBarTheme(color: ColorsApp.c_FFFFFF)),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
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
                  icon: SvgPicture.asset(IconsApp.home),
                  title: Text('Home')),
              FlashyTabBarItem(
                  // activeColor: ColorsApp.c_000000,
                  icon: SvgPicture.asset(IconsApp.category),
                  title: Text('Category')),
              FlashyTabBarItem(
                  // activeColor: ColorsApp.c_000000,
                  icon: SvgPicture.asset(IconsApp.bookmark),
                  title: Text('Bookmark')),
              FlashyTabBarItem(
                  // activeColor: ColorsApp.c_000000,
                  icon: SvgPicture.asset(IconsApp.profile),
                  title: Text('Profile')),
            ],
            onItemSelected: (index) {
              setState(() {
                _selectedIndex = index;
              });
            }));
  }
}
