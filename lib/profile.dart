// ignore_for_file: prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, camel_case_types, prefer_const_constructors, duplicate_ignore


import 'package:aplikasi_si/dashboard.dart';
import 'package:aplikasi_si/editprofile.dart';
import 'package:aplikasi_si/main.dart';
import 'package:aplikasi_si/tentangaplikasi.dart';
import 'package:aplikasi_si/websitekami.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class profilepage extends StatefulWidget {
  const profilepage({Key? key}) : super(key: key);

  @override
  State<profilepage> createState() => _profilepageState();
}

class _profilepageState extends State<profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff49B666),
      body: Column(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30, left: 33),
                  child: Row(
                    // ignore: prefer_const_constructors
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => utamapage()));
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
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
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Image.asset(
                  'assets/images/avatarprofile.png',
                  width: 150,
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  'User',
                  style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                Text(
                  'zakkyganteng@gmail.com',
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.white.withOpacity(0.5)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 38,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 33),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(30.0),
                    topRight: const Radius.circular(30.0)),
                color: Colors.white),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => editprofilepage()));
                  },
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14.0),
                            color: Color(0xffF5DDEA)),
                        padding: EdgeInsets.all(9),
                        child: Icon(
                          Icons.person,
                          color: Color(0xffD85184),
                          size: 36,
                        ),
                      ),
                      SizedBox(
                        width: 22,
                      ),
                      Text(
                        'Edit Profile',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => websitekamipage()));
                  },
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14.0),
                            color: Color(0xffDCDDF6)),
                        padding: EdgeInsets.all(9),
                        child: Icon(
                          Icons.language,
                          color: Color(0xff5C59A0),
                          size: 36,
                        ),
                      ),
                      SizedBox(
                        width: 22,
                      ),
                      Text(
                        'Website Kami',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => tentangaplikasipage()));
                  },
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14.0),
                            color: Color(0xffFEE4D2)),
                        padding: EdgeInsets.all(9),
                        child: Icon(
                          Icons.call,
                          color: Color(0xffEE701C),
                          size: 36,
                        ),
                      ),
                      SizedBox(
                        width: 22,
                      ),
                      Text(
                        'Tentang Aplikasi',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14.0),
                          color: Color(0xffD1D1D1)),
                      padding: EdgeInsets.all(9),
                      child: Icon(
                        Icons.logout,
                        color: Colors.black,
                        size: 36,
                      ),
                    ),
                    SizedBox(
                      width: 22,
                    ),
                    Text(
                      'Keluar',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
                SizedBox(
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
