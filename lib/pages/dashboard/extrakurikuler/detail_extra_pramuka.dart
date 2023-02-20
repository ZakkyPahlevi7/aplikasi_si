// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailExtraPramuka extends StatefulWidget {
  const DetailExtraPramuka({super.key});

  @override
  State<DetailExtraPramuka> createState() => _DetailExtraPaskibraState();
}

class _DetailExtraPaskibraState extends State<DetailExtraPramuka> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/headerpramuka.png'),
                        fit: BoxFit.cover)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 26, top: 26),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 26, top: 88),
                      child: Text(
                        'Extrakurikuler Pramuka',
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 26, top: 4, bottom: 38),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                size: 14,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                'Lapangan Basket',
                                style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.calendar_month,
                                size: 14,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text('Hari Selasa',
                                  style: GoogleFonts.poppins(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white))
                            ],
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.schedule,
                                size: 14,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                '16:00 - 17:00',
                                style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 26),
                      child: Text(
                        'Tentang',
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 26, right: 26, top: 6),
                  child: Text(
                    'Pramuka merupakan permainan yang diciptakan seorang guru olahraga bernama James Naismith pada 1891-an. Kala itu, James ingin membuat permainan yang bisa dimainkan murid-muridnya dalam ruangan tertutup, terutama saat musim dingin. \n\nNamun, basket yang dilakukan James berbeda dari yang sekarang. James hanya membuat beberapa aturan dasar agar bisa diterima banyak orang. \n\nPermainan ini berlangsung dengan cara mempertandingkan dua tim basket dan berebut bola untuk dimasukkan ke dalam ring lawan. Basket memiliki banyak manfaat.',
                    style: GoogleFonts.poppins(
                        fontSize: 13, fontWeight: FontWeight.w400),
                  )),
              Container(
                margin: EdgeInsets.only(left: 26, top: 20, bottom: 6),
                child: Text(
                  'Galeri Kegiatan',
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 18),
                  child: Image.asset('assets/images/galeribasket.png')),
              SizedBox(
                height: 16,
              )
            ],
          ),
        ],
      ),
    ));
  }
}
