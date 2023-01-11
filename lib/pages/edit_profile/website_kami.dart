import 'package:flutter/material.dart';
import 'package:aplikasi_si/pages/page.dart';
import 'package:aplikasi_si/theme/theme.dart';

class WebsiteKamiPage extends StatefulWidget {
  const WebsiteKamiPage({Key? key}) : super(key: key);

  @override
  State<WebsiteKamiPage> createState() => _WebsiteKamiPageState();
}

class _WebsiteKamiPageState extends State<WebsiteKamiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 30, left: 33),
            child: Row(
              // ignore: prefer_const_constructors
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProfilePage()));
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
