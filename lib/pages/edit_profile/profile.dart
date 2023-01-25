// ignore_for_file: prefer_const_constructors

import 'package:aplikasi_si/pages/edit_profile/tentangaplikasi.dart';
import 'package:aplikasi_si/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_si/bottom_navbar.dart';
import 'package:aplikasi_si/pages/page.dart';
import 'package:url_launcher/url_launcher.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  _launchURL() async {
    const url = 'https://darojaatululuum.sch.id';
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0962E0),
      body: Column(
        children: [
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30, left: 33),
                child: Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const BottomNavbar()));
                        },
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 26,
                        )),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      'profile',
                      style: AppTextStyle.appTitlew400s18(Colors.white),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/images/avatarprofile.png',
                width: 150,
              ),
              const SizedBox(
                height: 14,
              ),
              Text(
                'User',
                style: AppTextStyle.appTitlew700s18(Colors.white),
              ),
              Text(
                'zakkyganteng@gmail.com',
                style: AppTextStyle.appTitlew600s14(
                    Color.fromRGBO(255, 255, 255, 0.5)),
              ),
            ],
          ),
          const SizedBox(
            height: 38,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 33),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0)),
                color: Colors.white),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EditProfilePage()));
                  },
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14.0),
                            color: AppColors.lightPink),
                        padding: const EdgeInsets.all(9),
                        child: Icon(
                          Icons.person,
                          color: AppColors.hotPink,
                          size: 36,
                        ),
                      ),
                      const SizedBox(
                        width: 22,
                      ),
                      Text(
                        'Edit Profile',
                        style: AppTextStyle.appTitlew500s16(),
                      ),
                      const Spacer(),
                      const Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _launchURL();
                    });
                  },
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14.0),
                            color: const Color(0xffDCDDF6)),
                        padding: const EdgeInsets.all(9),
                        child: const Icon(
                          Icons.language,
                          color: Color(0xff5C59A0),
                          size: 36,
                        ),
                      ),
                      const SizedBox(
                        width: 22,
                      ),
                      Text(
                        'Website Kami',
                        style: AppTextStyle.appTitlew500s16(),
                      ),
                      const Spacer(),
                      const Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const tentangaplikasi()));
                  },
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14.0),
                            color: const Color(0xffFEE4D2)),
                        padding: const EdgeInsets.all(9),
                        child: const Icon(
                          Icons.info_outline,
                          color: Color(0xffEE701C),
                          size: 36,
                        ),
                      ),
                      const SizedBox(
                        width: 22,
                      ),
                      Text(
                        'Tentang Aplikasi',
                        style: AppTextStyle.appTitlew500s16(),
                      ),
                      const Spacer(),
                      const Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14.0),
                          color: const Color(0xffD1D1D1)),
                      padding: const EdgeInsets.all(9),
                      child: const Icon(
                        Icons.logout,
                        color: Colors.black,
                        size: 36,
                      ),
                    ),
                    const SizedBox(
                      width: 22,
                    ),
                    Text(
                      'Keluar',
                      style: AppTextStyle.appTitlew500s16(),
                    ),
                    const Spacer(),
                    const Icon(Icons.arrow_forward_ios)
                  ],
                ),
                const SizedBox(
                  height: 17,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
