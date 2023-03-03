// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'garisputus.dart';

class tagihanSemesterDua extends StatefulWidget {
  const tagihanSemesterDua({super.key});

  @override
  State<tagihanSemesterDua> createState() => _tagihanSemesterDuaState();
}

class _tagihanSemesterDuaState extends State<tagihanSemesterDua> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Tagihan Semester 2'),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 6, bottom: 6),
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
                margin: EdgeInsets.only(top: 16, right: 26, left: 26),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Januari',
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      children: [
                        Text(
                          'Tagihan',
                          style: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff464646)),
                        ),
                        Spacer(),
                        Text('100.000',
                            style: GoogleFonts.poppins(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.6,
                                color: Color(0xff464646)))
                      ],
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        Text('Status',
                            style: GoogleFonts.poppins(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff464646))),
                        Spacer(),
                        Text('Lunas',
                            style: GoogleFonts.poppins(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff3A8E31)))
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 6, bottom: 6),
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
                margin: EdgeInsets.only(top: 16, right: 26, left: 26),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Januari',
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      children: [
                        Text(
                          'Tagihan',
                          style: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff464646)),
                        ),
                        Spacer(),
                        Text('100.000',
                            style: GoogleFonts.poppins(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.6,
                                color: Color(0xff464646)))
                      ],
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        Text('Status',
                            style: GoogleFonts.poppins(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff464646))),
                        Spacer(),
                        Text('Lunas',
                            style: GoogleFonts.poppins(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff3A8E31)))
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 6, bottom: 6),
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
                margin: EdgeInsets.only(top: 16, right: 26, left: 26),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Januari',
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      children: [
                        Text(
                          'Tagihan',
                          style: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff464646)),
                        ),
                        Spacer(),
                        Text('100.000',
                            style: GoogleFonts.poppins(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.6,
                                color: Color(0xff464646)))
                      ],
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        Text('Status',
                            style: GoogleFonts.poppins(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff464646))),
                        Spacer(),
                        Text('Lunas',
                            style: GoogleFonts.poppins(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff3A8E31)))
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 6, bottom: 6),
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
                margin: EdgeInsets.only(top: 16, right: 26, left: 26),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Januari',
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      children: [
                        Text(
                          'Tagihan',
                          style: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff464646)),
                        ),
                        Spacer(),
                        Text('100.000',
                            style: GoogleFonts.poppins(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.6,
                                color: Color(0xff464646)))
                      ],
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        Text('Status',
                            style: GoogleFonts.poppins(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff464646))),
                        Spacer(),
                        Text('Lunas',
                            style: GoogleFonts.poppins(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff3A8E31)))
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 6, bottom: 6),
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
                margin: EdgeInsets.only(top: 16, right: 26, left: 26),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Januari',
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      children: [
                        Text(
                          'Tagihan',
                          style: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff464646)),
                        ),
                        Spacer(),
                        Text('100.000',
                            style: GoogleFonts.poppins(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.6,
                                color: Color(0xff464646)))
                      ],
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        Text('Status',
                            style: GoogleFonts.poppins(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff464646))),
                        Spacer(),
                        Text('Lunas',
                            style: GoogleFonts.poppins(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff3A8E31)))
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 6, bottom: 6),
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
                margin: EdgeInsets.only(top: 16, right: 26, left: 26),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Januari',
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      children: [
                        Text(
                          'Tagihan',
                          style: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff464646)),
                        ),
                        Spacer(),
                        Text('100.000',
                            style: GoogleFonts.poppins(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.6,
                                color: Color(0xff464646)))
                      ],
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        Text('Status',
                            style: GoogleFonts.poppins(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff464646))),
                        Spacer(),
                        Text('Lunas',
                            style: GoogleFonts.poppins(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff3A8E31)))
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 26,
              ),
              DashedLine(
                height: 20,
                width: 308,
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10, bottom: 14),
                margin: EdgeInsets.only(right: 26, left: 26, bottom: 16),
                child: Row(
                  children: [
                    Text('Total Tagihan',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        )),
                    Spacer(),
                    Text('600.000',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ))
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
