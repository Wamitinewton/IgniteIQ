import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:igniteiq/pages/studentpages/views/dashboard_page.dart';
import 'package:igniteiq/pages/studentpages/views/mycourses_page.dart';
import 'package:igniteiq/pages/studentpages/views/profile_page.dart';
import 'package:igniteiq/pages/studentpages/views/settings_page.dart';
import 'package:igniteiq/pages/studentpages/views/student_screen.dart';

class BottomNavBarUtil {
  static List<BottomNavigationBarItem> getBottomNavBarItems() {
    return const [
      BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Courses'),
      BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'Dashboard'),
      BottomNavigationBarItem(
          icon: Icon(Icons.library_books), label: 'My Courses'),
      BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
    ];
  }

  static int _selectedIndex = 0;

  static void _handleTabTap(int index) {
    _selectedIndex = index;
    switch (index) {
      case 0:
        Get.offAll(StudentHomeScreen());
        break;
      case 1:
        Get.offAll(DashboardPage());
        break;
      case 2:
        Get.offAll(MyCourses());
        break;
      case 3:
        Get.offAll(ProfilePage());
        break;
      case 4:
        Get.offAll(SettingsPage());
        break;
    }
  }

  static BottomNavigationBar buildBottomNavBar() {
    return BottomNavigationBar(
      items: getBottomNavBarItems(),
      currentIndex: _selectedIndex,
      onTap: _handleTabTap,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.black,
      showUnselectedLabels: true,
      showSelectedLabels: true,
    );
  }
}
