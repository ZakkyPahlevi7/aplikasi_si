// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables, import_of_legacy_library_into_null_safe, avoid_unnecessary_containers
import 'dart:html';

import 'package:aplikasi_si/CarouselWithDotsPage.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'main.dart';

class dashboardpage extends StatefulWidget {
  const dashboardpage({Key? key}) : super(key: key);

  @override
  State<dashboardpage> createState() => _dashboardpageState();
}

class _dashboardpageState extends State<dashboardpage> {
  int currentIndex = 0;
  List<String> images = [
    'assets/images/visi.png',
    'assets/images/misi.png',
    'assets/images/tujuan.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 34, right: 34, top: 10),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      width: 80,
                    ),
                    Spacer(),
                    Image.asset(
                      'assets/images/profile.png',
                      width: 45,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              CarouselWithDotsPage(imgList: imgList),
              SizedBox(
                height: 140,
                width: double.infinity,
                child: PageView.builder(
                  onPageChanged: (index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                          left: 28, bottom: 0, right: 28, top: 20),
                      child: SizedBox(
                        width: double.infinity,
                        child: Image.asset(
                          images[index % images.length],
                          fit: BoxFit.fill,
                          width: 200,
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (var i = 0; i < images.length; i++)
                    buildIndicator(currentIndex == i)
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 12, left: 36),
                child: Text(
                  'Civitas',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        border: Border.all(color: Color(0xff00DB8C))),
                    margin: EdgeInsets.only(left: 36),
                    padding:
                        EdgeInsets.symmetric(horizontal: 19.5, vertical: 4),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/profilks.png',
                          width: 22,
                        ),
                        Text(
                          'Kepala Sekolah',
                          style: GoogleFonts.poppins(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        border: Border.all(color: Color(0xff00DB8C))),
                    margin: EdgeInsets.only(right: 36),
                    padding:
                        EdgeInsets.symmetric(horizontal: 27.5, vertical: 4),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/profilwk.png',
                          width: 22,
                        ),
                        Text(
                          'Wakil Kepala',
                          style: GoogleFonts.poppins(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        border: Border.all(color: Color(0xff00DB8C))),
                    margin: EdgeInsets.only(left: 36),
                    padding:
                        EdgeInsets.symmetric(horizontal: 35.2, vertical: 4),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/profildg.png',
                          width: 22,
                        ),
                        Text(
                          'Data Guru',
                          style: GoogleFonts.poppins(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        border: Border.all(color: Color(0xff00DB8C))),
                    margin: EdgeInsets.only(right: 36),
                    padding:
                        EdgeInsets.symmetric(horizontal: 35.5, vertical: 4),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/profilkw.png',
                          width: 22,
                        ),
                        Text(
                          'Wali Kelas',
                          style: GoogleFonts.poppins(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        border: Border.all(color: Color(0xff00DB8C))),
                    margin: EdgeInsets.only(left: 36),
                    padding:
                        EdgeInsets.symmetric(horizontal: 35.7, vertical: 4),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/profilds.png',
                          width: 22,
                        ),
                        Text(
                          'Data Staff',
                          style: GoogleFonts.poppins(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        border: Border.all(color: Color(0xff00DB8C))),
                    margin: EdgeInsets.only(right: 36),
                    padding:
                        EdgeInsets.symmetric(horizontal: 27.5, vertical: 4),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/profilwk.png',
                          width: 22,
                        ),
                        Text(
                          'Wakil Kepala',
                          style: GoogleFonts.poppins(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 36),
                child: Row(
                  children: [
                    Text(
                      'Prestasi',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Spacer(),
                    Text(
                      'Lihat Semua',
                      style: GoogleFonts.poppins(
                          color: Color.fromRGBO(0, 0, 0, 0.5), fontSize: 13),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                padding: EdgeInsets.symmetric(vertical: 4),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 36),
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 4),
                            child: Image.asset(
                              'assets/images/medali1.png',
                              width: 36,
                            ),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Juara 1 Nasional',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w700, fontSize: 10),
                              ),
                              Text(
                                'Maulana Zakky Pahlevi',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400, fontSize: 10),
                              ),
                              Text('Juara 1 Lomba',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10)),
                              Text('Ketampanan 2022',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10))
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 16),
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 4),
                            child: Image.asset(
                              'assets/images/medali2.png',
                              width: 36,
                            ),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Juara 2 Nasional',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w700, fontSize: 10),
                              ),
                              Text(
                                'Maulana Zakky Pahlevi',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400, fontSize: 10),
                              ),
                              Text('Juara 2 Lomba',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10)),
                              Text('Anak Terajin 2022',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10))
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 16),
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 4),
                            child: Image.asset(
                              'assets/images/medali1.png',
                              width: 36,
                            ),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Juara 1 Nasional',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w700, fontSize: 10),
                              ),
                              Text(
                                'Maulana Zakky Pahlevi',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400, fontSize: 10),
                              ),
                              Text('Juara 1 Lomba',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10)),
                              Text('Keberanian 2022',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10))
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 16),
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 4),
                            child: Image.asset(
                              'assets/images/medali2.png',
                              width: 36,
                            ),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Juara 2 Nasional',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w700, fontSize: 10),
                              ),
                              Text(
                                'Maulana Zakky Pahlevi',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400, fontSize: 10),
                              ),
                              Text('Juara 2 Lomba',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10)),
                              Text('Anak Terkuat 2022',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10))
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 38,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                margin: EdgeInsets.only(left: 36),
                child: Text(
                  'Extrakurikuler',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 78,
                        ),
                        Text('Extrakurikuler')
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 200,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildIndicator(bool isSelected) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      height: isSelected ? 9 : 9,
      width: isSelected ? 9 : 9,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? Color(0xff00DB8C) : Colors.grey),
    );
  }
}
