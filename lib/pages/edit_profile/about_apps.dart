// ignore_for_file: prefer_const_constructors, camel_case_types, duplicate_ignore

import 'profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../main.dart';

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
            margin: EdgeInsets.only(top: 30, left: 33),
            child: Row(
              // ignore: prefer_const_constructors
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ProfilePage()));
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                      size: 26,
                    )),
                SizedBox(
                  width: 6,
                ),
                Text(
                  'profile',
                  style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
