// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetaiDataStaff extends StatefulWidget {
  const DetaiDataStaff({Key? key}) : super(key: key);

  @override
  State<DetaiDataStaff> createState() => _DetaiDataStaffState();
}

class _DetaiDataStaffState extends State<DetaiDataStaff> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Staff'),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 17,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    blurRadius: 2.5,
                    spreadRadius: 0.9,
                    color: Colors.black.withOpacity(0.1))
              ],
            ),
            margin: EdgeInsets.symmetric(horizontal: 22),
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 13),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xffCCCCCC)),
                  padding: EdgeInsets.all(10),
                  child: Image.asset(
                    'assets/images/profilcivitas.png',
                    width: 50,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Isyana Nurul Khasanah',
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Bendahara & Kepala TU',
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          height: 1.3),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    blurRadius: 2.5,
                    spreadRadius: 0.9,
                    color: Colors.black.withOpacity(0.1))
              ],
            ),
            margin: EdgeInsets.symmetric(horizontal: 22),
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 13),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xffCCCCCC)),
                  padding: EdgeInsets.all(10),
                  child: Image.asset(
                    'assets/images/profilcivitas.png',
                    width: 50,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Anah Muawanah',
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Staf TU',
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          height: 1.3),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    blurRadius: 2.5,
                    spreadRadius: 0.9,
                    color: Colors.black.withOpacity(0.1))
              ],
            ),
            margin: EdgeInsets.symmetric(horizontal: 22),
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 13),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xffCCCCCC)),
                  padding: EdgeInsets.all(10),
                  child: Image.asset(
                    'assets/images/profilcivitas.png',
                    width: 50,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Agus Salim',
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Uncle (OB)',
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          height: 1.3),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    blurRadius: 2.5,
                    spreadRadius: 0.9,
                    color: Colors.black.withOpacity(0.1))
              ],
            ),
            margin: EdgeInsets.symmetric(horizontal: 22),
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 13),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xffCCCCCC)),
                  padding: EdgeInsets.all(10),
                  child: Image.asset(
                    'assets/images/profilcivitas.png',
                    width: 50,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ahmad',
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Uncle (OB)',
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          height: 1.3),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
