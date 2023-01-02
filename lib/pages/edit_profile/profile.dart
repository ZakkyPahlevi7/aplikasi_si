import 'page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:aplikasi_si/bottom_navbar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
                                    builder: (context) => BottomNavbar()));
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfilePage()));
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => WebsiteKamiPage()));
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AboutAppsPage()));
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
