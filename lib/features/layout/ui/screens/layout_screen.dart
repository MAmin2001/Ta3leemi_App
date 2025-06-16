import 'package:flutter/material.dart';
import 'package:ta3leemi_project/core/themes/colors_manager.dart';
import 'package:ta3leemi_project/features/books/ui/screens/books_screen.dart';
import 'package:ta3leemi_project/features/courses/ui/screens/courses_screen.dart';
import 'package:ta3leemi_project/features/home/ui/screens/home_screen.dart';
import 'package:ta3leemi_project/features/exams/ui/screens/exams_screen.dart';
import 'package:ta3leemi_project/features/account/ui/screens/account_screen.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key, list});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int _selectedIndex = 2;
  final List<Widget> _pages = [
    ExamsScreen(),
    BooksScreen(),
    HomeScreen(),
    CoursesScreen(),
    AccountScreen(),
  ];

  final List<BottomNavigationBarItem> _bottomNavItems = [
    BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: 'Exams'),
    BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Books'),
    BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Courses'),
    BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Account'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 25.0,
        fixedColor: Colors.white,
        selectedIconTheme: IconThemeData(size: 30.0),
        selectedFontSize: 14.0,
        backgroundColor: ColorsManager.mainBlue,
        unselectedItemColor: ColorsManager.lightGrey,
        items: _bottomNavItems,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
      ),
      body: _pages[_selectedIndex],
    );
  }
}
