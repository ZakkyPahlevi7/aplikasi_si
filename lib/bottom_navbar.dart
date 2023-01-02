import 'package:aplikasi_si/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_si/pages/page.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int currentIndex = 0;
  final screens = [const DashboardPage(), const EventPage(), const PpdbPage(), const ContactUsPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
            ),
          ],
        ),
        child: BottomNavigationBar(
            unselectedItemColor: AppColors.primaryColor,
            fixedColor: AppColors.primaryColor,
            // type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            onTap: (index) => setState(() => currentIndex = index),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: 'Home',
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon: Icon(Icons.celebration),
                  label: 'Event',
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon: Icon(Icons.dynamic_form),
                  label: 'PPDB',
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                  backgroundColor: Colors.white)
            ]),
      ),
    );
  }
}