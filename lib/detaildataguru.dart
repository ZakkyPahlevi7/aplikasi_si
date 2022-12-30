// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class detaildg extends StatefulWidget {
  const detaildg({Key? key}) : super(key: key);

  @override
  State<detaildg> createState() => _detaildgState();
}

class _detaildgState extends State<detaildg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Guru'),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
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
                          'Isman RUsan Farhani, S.Pd',
                          style: GoogleFonts.poppins(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Guru Bahasa Indonesia',
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
                          'Dian Santri Prihatin, S.Pd',
                          style: GoogleFonts.poppins(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Guru Ipa',
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
                          'Susanto, M.Pd',
                          style: GoogleFonts.poppins(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Guru Matematika',
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
                          'Lutfi Akip Alfian, M.Pd',
                          style: GoogleFonts.poppins(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Guru Ips',
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
                          'M.Syukri Ghozali, S.Pd.I',
                          style: GoogleFonts.poppins(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Guru Pai',
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
                          'Indah Nurfaedah, S.Pd',
                          style: GoogleFonts.poppins(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Guru Matematika',
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
                          'Lina Herlina, S.Pd',
                          style: GoogleFonts.poppins(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Guru PPKN',
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
                          'Faiz Daroin, S.Pd',
                          style: GoogleFonts.poppins(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Guru Bahasa Inggris',
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
                          'Muharar, S.Ag',
                          style: GoogleFonts.poppins(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Guru Bahasa Arab',
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
                          'Dede Yusuf Maulana, S.Ag',
                          style: GoogleFonts.poppins(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Guru Al-Quran',
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
                          'Rosi Indah Santri, ST',
                          style: GoogleFonts.poppins(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Guru Al-Quran',
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
                          "Muhammad Irfa Rifa'i",
                          style: GoogleFonts.poppins(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Guru Al-Quran',
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
                          'Abdul Hamid, S.Pd',
                          style: GoogleFonts.poppins(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Guru Al-quran',
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
              )
            ],
          ),
        ],
      ),
    );
  }
}
