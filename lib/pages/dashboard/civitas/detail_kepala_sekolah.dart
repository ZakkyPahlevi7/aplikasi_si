// ignore_for_file: camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailKepalaSekolah extends StatefulWidget {
  const DetailKepalaSekolah({Key? key}) : super(key: key);

  @override
  State<DetailKepalaSekolah> createState() => _DetailKepalaSekolahState();
}

class _DetailKepalaSekolahState extends State<DetailKepalaSekolah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kepala Sekolah'),
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
                      'Tri Puji Rahayu, SP',
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Kepala Madrasah \nPeriode 2014 s/d 2018',
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
          SizedBox(height: 14,),
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
                      'Shillakhudin M.Pd',
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Kepala Madrasah \nPeriode 2019 s/d sekarang',
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
