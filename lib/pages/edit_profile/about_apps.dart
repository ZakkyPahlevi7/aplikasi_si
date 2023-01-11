import 'package:aplikasi_si/theme/app_text_styles.dart';

import '../page.dart';
import 'package:flutter/material.dart';

class AboutAppsPage extends StatefulWidget {
  const AboutAppsPage({Key? key}) : super(key: key);

  @override
  State<AboutAppsPage> createState() => _AboutAppsPageState();
}

class _AboutAppsPageState extends State<AboutAppsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 30, left: 33),
            child: Row(
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const ProfilePage()));
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                      size: 26,
                    )),
                const SizedBox(
                  width: 6,
                ),
                Text(
                  'profile',
                  style: AppTextStyle.appTitlew400s18(Colors.black),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
