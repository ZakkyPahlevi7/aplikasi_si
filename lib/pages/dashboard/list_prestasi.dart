import 'package:aplikasi_si/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_si/bottom_navbar.dart';

class ListPrestasiPage extends StatefulWidget {
  const ListPrestasiPage({Key? key}) : super(key: key);

  @override
  State<ListPrestasiPage> createState() => _ListPrestasiPageState();
}

class _ListPrestasiPageState extends State<ListPrestasiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 30, left: 33),
            child: Row(
              // ignore: prefer_const_constructors
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const BottomNavbar()));
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
                  'Prestasi',
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
