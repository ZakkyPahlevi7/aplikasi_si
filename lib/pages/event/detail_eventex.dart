// ignore_for_file: prefer_const_constructors

import 'package:aplikasi_si/controller/event_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:aplikasi_si/model/model_event.dart' as eventRecent;

class DetailEventExPage extends StatefulWidget {
  eventRecent.EventRecentData eventRecentData;
  DetailEventExPage({Key? key, required this.eventRecentData}) : super(key: key);

  @override
  State<DetailEventExPage> createState() => _DetailEventPageState();
}

class _DetailEventPageState extends State<DetailEventExPage> {
  int _current = 0;

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
                      image: NetworkImage(widget.eventRecentData.link),
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
                      widget.eventRecentData.event,
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
                                    widget.eventRecentData.lokasi,
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
                            Text(widget.eventRecentData.tanggal.toString(),
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
                  widget.eventRecentData.tentang,
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
            Column(
              children: [
                CarouselSlider.builder(
                    itemCount: widget.eventRecentData.imagesEvents.length,
                    itemBuilder: (BuildContext context, int index, i) {
                      return Container(
                        width: 500,
                        height: 230,
                        margin: const EdgeInsets.only(
                          top: 25,
                        ),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(5.0),
                          ),
                          child: Stack(
                            children: [
                              Image.network(
                                widget.eventRecentData.imagesEvents[index].link,
                                // widget.gambarheader![index].foto!,
                                // imgList[index],
                                fit: BoxFit.contain,
                                width: 900,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    options: CarouselOptions(
                        autoPlay: true,
                        enlargeCenterPage: true,
                        aspectRatio: 2.0,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                          });
                        })),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: widget.eventRecentData.imagesEvents.map((url) {
                    int index = widget.eventRecentData.imagesEvents.indexOf(url);
                    return Container(
                      width: 10,
                      height: 10,
                      margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 3),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _current == index
                              ? const Color(0xff0962E0)
                              : const Color(0xffD9D9D9)),
                    );
                  }).toList(),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            )
          ],
        ),
      ),
    ));
  }
}
