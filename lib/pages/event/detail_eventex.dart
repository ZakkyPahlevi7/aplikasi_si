// ignore_for_file: prefer_const_constructors

import 'package:aplikasi_si/controller/event_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailEventExPage extends StatefulWidget {
  const DetailEventExPage({Key? key}) : super(key: key);

  @override
  State<DetailEventExPage> createState() => _DetailEventPageState();
}

class _DetailEventPageState extends State<DetailEventExPage> {
  final _controller = Get.put(EventController());

  @override
  void initState() {
    _initData();
    // TODO: implement initState
    super.initState();
  }

  Future onRefresh() async {
    await _initData();
  }

  Future<Null> _initData() async {
    await _controller.loadDataRecent(withLoading: true);
  }
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
                        image: AssetImage('assets/images/headerkemah.png'),
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
                      margin: EdgeInsets.only(left: 26, top: 258),
                      child: Text(
                        'Camping',
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 26, top: 4, bottom: 28),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Icon(Icons.location_on,
                                        size: 14, color: Colors.white),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text(
                                      'Halaman Sekolah',
                                      style: GoogleFonts.poppins(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Icon(
                                Icons.calendar_month,
                                size: 14,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text('28 Oktober 2022',
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
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 26, bottom: 6, top: 16),
                child: Text(
                  'Tentang',
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 26, right: 26, top: 6),
                  child: Text(
                    'Tujuan Camping yang diadakan sekolah adalah memeberikan pengalaman mempunyainya saling ketergantungan selang unsur-unsur lingkungan kehidupan dan kebutuhan untuk melestarikannya, menjaga ronde yang terkait dan mengembangkan sikap bertanggung jawab hendak masa depan yang menghormati keseimbangan lingkungan kehidupan.',
                    style: GoogleFonts.poppins(
                        fontSize: 13, fontWeight: FontWeight.w400),
                  )),
              Container(
                margin: EdgeInsets.only(left: 26, top: 20, bottom: 6),
                child: Text(
                  'Syarat dan Ketentuan',
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 26, right: 26, top: 6),
                  child: Text(
                    '• Siswa Mtsn 1 Pati \n• Sehat jasmani dan rohani \n• Membawa bekal masing-masing dari rumah • Izin kepada orang tua \n• Membawa perlengkapan mandi \n• Memakai pakaian pramuka lengkap',
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
                  child: Image.asset('assets/images/galeriextra.png')),
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
