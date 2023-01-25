// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PpdbPage extends StatefulWidget {
  const PpdbPage({Key? key}) : super(key: key);

  @override
  State<PpdbPage> createState() => _PpdbPageState();
}

class _PpdbPageState extends State<PpdbPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 22),
                  child: Image.asset(
                    'assets/images/ppdbalur.png',
                    width: 340,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 1.9,
                        spreadRadius: 2.1,
                        color: Colors.black.withOpacity(0.1))
                  ],
                ),
                margin: const EdgeInsets.symmetric(horizontal: 31),
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/iconpdf.png',
                      width: 30,
                    ),
                    Spacer(),
                    Text(
                      'Informasi PPDB MTsN 1 Pati 2021 / 2022',
                      style: GoogleFonts.poppins(
                          fontSize: 12, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 1.9,
                        spreadRadius: 2.1,
                        color: Colors.black.withOpacity(0.1))
                  ],
                ),
                margin: const EdgeInsets.symmetric(horizontal: 31),
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/iconpdf.png',
                      width: 30,
                    ),
                    Spacer(),
                    Text(
                      'Informasi PPDB MTsN 1 Pati 2021 / 2022',
                      style: GoogleFonts.poppins(
                          fontSize: 12, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff0962E0),
                      padding:
                          EdgeInsets.symmetric(horizontal: 123, vertical: 10)),
                  child: Text(
                    'Daftar',
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              )
            ],
          ),
        ],
      ),
    );
  }
}
