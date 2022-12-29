// ignore_for_file: prefer_const_constructors, duplicate_ignore, avoid_unnecessary_containers

import 'package:aplikasi_si/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'main.dart';

class editprofilepage extends StatefulWidget {
  const editprofilepage({Key? key}) : super(key: key);

  @override
  State<editprofilepage> createState() => _editprofilepageState();
}

class _editprofilepageState extends State<editprofilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
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
                              builder: (context) => profilepage()));
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
                  'Edit Profile',
                  style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/editgambar.png'),
                    fit: BoxFit.contain)),
            child: Container(
              margin: EdgeInsets.only(
                top: 110,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 210,
                  ),
                  Image.asset(
                    'assets/images/cameraedit.png',
                    width: 35,
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 33),
            child: TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.black))),
            ),
          )
        ],
      ),
    );
  }
}
