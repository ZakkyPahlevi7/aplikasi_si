// ignore_for_file: prefer_const_constructors

import 'package:aplikasi_si/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../page.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                  'Edit Profile',
                  style: AppTextStyle.appTitlew400s18(Colors.black),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 40),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/editgambar.png'),
                    fit: BoxFit.contain)),
            child: Container(
              margin: const EdgeInsets.only(
                top: 110,
              ),
              child: Row(
                children: [
                  const SizedBox(
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
          SizedBox(
            height: 20,
          ),
          Container(
              margin: EdgeInsets.only(left: 32),
              child: Text('Username',
                  style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffD6D6D6)))),
          SizedBox(
            height: 4,
          ),
          Container(
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(30.0)),
            margin: EdgeInsets.symmetric(horizontal: 32),
            child: SizedBox(
              height: 42,
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Masukkan username',
                    hintStyle: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.black26,
                        fontWeight: FontWeight.w500),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffD6D6D6)),
                        borderRadius: BorderRadius.circular(6.0)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff1468E2)),
                        borderRadius: BorderRadius.circular(6.0))),
              ),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Container(
              margin: EdgeInsets.only(left: 32),
              child: Text('Email',
                  style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffD6D6D6)))),
          SizedBox(
            height: 4,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 32),
            child: SizedBox(
              height: 42,
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Masukkan emailmu',
                    hintStyle: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.black26,
                        fontWeight: FontWeight.w500),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffD6D6D6)),
                        borderRadius: BorderRadius.circular(6.0)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff1468E2)),
                        borderRadius: BorderRadius.circular(6.0))),
              ),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Container(
              margin: EdgeInsets.only(left: 32),
              child: Text('No Telp',
                  style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffD6D6D6)))),
          SizedBox(
            height: 4,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 32),
            child: SizedBox(
              height: 42,
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Masukkan nomor teleponemu',
                    hintStyle: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.black26,
                        fontWeight: FontWeight.w500),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffD6D6D6)),
                        borderRadius: BorderRadius.circular(6.0)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff1468E2)),
                        borderRadius: BorderRadius.circular(6.0))),
              ),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Container(
              margin: EdgeInsets.only(left: 32),
              child: Text('Tanggal Lahir',
                  style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffD6D6D6)))),
          SizedBox(
            height: 4,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 32),
            child: SizedBox(
              height: 42,
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Masukkan tanggal lahirmu',
                    hintStyle: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.black26,
                        fontWeight: FontWeight.w500),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffD6D6D6)),
                        borderRadius: BorderRadius.circular(6.0)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff1468E2)),
                        borderRadius: BorderRadius.circular(6.0))),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 32),
            child: SizedBox(
              height: 44,
              width: 360,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff1468E2)),
                child: Text('Simpan'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
