import 'package:flutter/material.dart';

import '../pages/page.dart';

class DashboardHeader extends StatefulWidget {
  const DashboardHeader({Key? key}) : super(key: key);

  @override
  State<DashboardHeader> createState() => _DashboardHeaderState();
}

class _DashboardHeaderState extends State<DashboardHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 34, right: 34, top: 10),
      child: Row(
        children: [
          Image.asset(
            'assets/images/logo.png',
            width: 80,
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProfilePage()));
            },
            child: Image.asset(
              'assets/images/profile.png',
              width: 45,
            ),
          )
        ],
      ),
    );
  }
}
