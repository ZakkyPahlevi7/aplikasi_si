// ignore_for_file: prefer_const_constructors

import 'package:aplikasi_si/pages/profile/spp/tagihansmt1.dart';
import 'package:aplikasi_si/pages/profile/spp/tagihansmt2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class berandaSppPage extends StatefulWidget {
  const berandaSppPage({super.key});

  @override
  State<berandaSppPage> createState() => _berandaSppPageState();
}

class _berandaSppPageState extends State<berandaSppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('Ssp Siswa')),
      body: Column(
        children: [
          Container(
            margin:
                const EdgeInsets.only(left: 26, right: 26, top: 16, bottom: 8),
            padding:
                const EdgeInsets.only(left: 14, right: 14, top: 8, bottom: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    blurRadius: 1.5,
                    spreadRadius: 0.8,
                    color: Colors.black.withOpacity(0.2))
              ],
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/profile.png',
                  width: 55,
                ),
                const SizedBox(
                  width: 14,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Maulana Zakky Pahlevi',
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'XII RPL 1',
                      style: GoogleFonts.poppins(
                          fontSize: 13, fontWeight: FontWeight.w400),
                    )
                  ],
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => tagihanSemesterSatu()));
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 1.5,
                      spreadRadius: 0.8,
                      color: Colors.black.withOpacity(0.2))
                ],
              ),
              margin: EdgeInsets.only(left: 26, right: 26, top: 10, bottom: 10),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(7.0),
                        topRight: Radius.circular(7.0)),
                    child: Image.asset(
                      'assets/images/tagihanbackground.png',
                      height: 160, // atur tinggi gambar sesuai kebutuhan
                      fit: BoxFit.cover, // atur fit gambar sesuai kebutuhan
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(
                        12), // atur jarak teks dari pinggir container
                    child: Text(
                      'Tagihan Pembayaran SPP Semester 1',
                      style: TextStyle(
                        fontSize: 16, // atur ukuran teks sesuai kebutuhan
                        fontWeight:
                            FontWeight.w500, // atur gaya teks sesuai kebutuhan
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => tagihanSemesterDua()));
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 1.5,
                      spreadRadius: 0.8,
                      color: Colors.black.withOpacity(0.2))
                ],
              ),
              margin: EdgeInsets.only(left: 26, right: 26, top: 10),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(7.0),
                        topRight: Radius.circular(7.0)),
                    child: Image.asset(
                      'assets/images/tagihansmt2.png',
                      height: 160, // atur tinggi gambar sesuai kebutuhan
                      fit: BoxFit.cover, // atur fit gambar sesuai kebutuhan
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(
                        12), // atur jarak teks dari pinggir container
                    child: Text(
                      'Tagihan Pembayaran SPP Semester 1',
                      style: TextStyle(
                        fontSize: 16, // atur ukuran teks sesuai kebutuhan
                        fontWeight:
                            FontWeight.w500, // atur gaya teks sesuai kebutuhan
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
