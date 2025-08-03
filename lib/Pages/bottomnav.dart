import 'package:flutter/material.dart';
import 'package:intern_app/Pages/announcemnet_page.dart';
import 'package:intern_app/Pages/dashboard_page.dart';
import 'package:intern_app/Pages/leaderboard_page.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;
  List<Widget> pages = [DashboardPage(), LeaderboardPage(), AnnouncementPage()];

  @override
  Widget build(Object context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: pages),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff1F262E),
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/icons/dashboard_unselect_icon.png"),
              size: 32,
            ),
            activeIcon: ImageIcon(
              AssetImage("assets/icons/dashboard_select_icon.png"),
              size: 32,
            ),
            label: "Dashboard",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/icons/leaderboard_unselect_icon.png"),
              size: 32,
            ),
            activeIcon: ImageIcon(
              AssetImage("assets/icons/leaderboard_select_icon.png"),
              size: 32,
            ),
            label: "Leaderboard",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/icons/announcement_unselect_icon.png"),
              size: 32,
            ),
            activeIcon: ImageIcon(
              AssetImage("assets/icons/announcement_select_icon.png"),
              size: 32,
            ),
            label: "Announcements",
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Color(0xffffffff),
        unselectedItemColor: Color(0xff9EADBF),
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
