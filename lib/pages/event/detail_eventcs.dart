// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:aplikasi_si/model/model_event.dart' as event;

class DetailEventCsPage extends StatefulWidget {
  event.EventComingSoonData eventComingSoonData;
  DetailEventCsPage({Key? key, required this.eventComingSoonData}) : super(key: key);

  @override
  State<DetailEventCsPage> createState() => _DetailEventPageState();
}

class _DetailEventPageState extends State<DetailEventCsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(widget.eventComingSoonData.link),
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
                      widget.eventComingSoonData.event,
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
                                    widget.eventComingSoonData.lokasi,
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
                            Text(widget.eventComingSoonData.tanggal.toString(),
                                style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white))
                          ],
                        ),
                        SizedBox(
                          width: 8,
                        ),
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
                  widget.eventComingSoonData.tentang,
                  style: GoogleFonts.poppins(
                      fontSize: 13, fontWeight: FontWeight.w400),
                )),
            SizedBox(
              height: 16,
            )
          ],
        ),
      ),
    ));
  }
}
