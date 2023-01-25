import 'package:aplikasi_si/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_si/pages/page.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int currentIndex = 0;
  final screens = [
    const DashboardPage(),
    const EventPage(),
    const PpdbPage(),
    const ContactUsPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          SalomonBottomBarItem(
              icon: ImageIcon(const AssetImage('assets/icon/home.png'), color: AppColors.contactUsIconColor),
              selectedColor: AppColors.contactUsIconColor,
              unselectedColor: AppColors.contactUsIconColor,
              title: Text('Home', style: TextStyle(color: AppColors.contactUsIconColor),)),

          SalomonBottomBarItem(
              icon: ImageIcon(const AssetImage('assets/icon/event.png'), color: AppColors.contactUsIconColor),
              selectedColor: AppColors.contactUsIconColor,
              unselectedColor: AppColors.contactUsIconColor,
              title: Text('Event', style: TextStyle(color: AppColors.contactUsIconColor),)),

          SalomonBottomBarItem(
              icon: ImageIcon(const AssetImage('assets/icon/ppdb.png'), color: AppColors.contactUsIconColor),
              selectedColor: AppColors.contactUsIconColor,
              unselectedColor: AppColors.contactUsIconColor,
              title: Text('Ppdb', style: TextStyle(color: AppColors.contactUsIconColor))),

          SalomonBottomBarItem(
              icon: ImageIcon(const AssetImage('assets/icon/contact.png'), color: AppColors.contactUsIconColor),
              selectedColor: AppColors.contactUsIconColor,
              unselectedColor: AppColors.contactUsIconColor,
              title: Text('Contact', style: TextStyle(color: AppColors.contactUsIconColor))),
        ],
      )
    );
  }
}
