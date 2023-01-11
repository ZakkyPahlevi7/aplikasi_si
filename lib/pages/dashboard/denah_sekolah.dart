import 'package:flutter/material.dart';
import 'package:aplikasi_si/bottom_navbar.dart';

import '../../theme/app_text_styles.dart';

class DenahPage extends StatefulWidget {
  const DenahPage({Key? key}) : super(key: key);

  @override
  State<DenahPage> createState() => _DenahPageState();
}

class _DenahPageState extends State<DenahPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
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
                      color: Colors.black,
                      size: 26,
                    )),
                const SizedBox(
                  width: 6,
                ),
                Text(
                  'Denah MTsN 1 Pati',
                  style: AppTextStyle.appTitlew600s18(Colors.black),
                )
              ],
            ),
          ),
          Image.asset('assets/images/denahskolah.png')
        ],
      ),
    );
  }
}
