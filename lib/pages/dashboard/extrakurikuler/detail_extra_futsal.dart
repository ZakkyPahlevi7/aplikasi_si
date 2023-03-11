// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../controller/extrakurikuler_controller.dart';

class DetailExtra extends StatefulWidget {
  int id;
  DetailExtra({super.key, required this.id});

  @override
  State<DetailExtra> createState() => _DetailExtraState();
}

class _DetailExtraState extends State<DetailExtra> {
  final ExtrakurikulerController _extraController = ExtrakurikulerController();
  int _current = 0;

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
    await _extraController.loadData(withLoading: true);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(_extraController.extrakurikuler[widget.id].link),
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
                        _extraController.extrakurikuler[widget.id].judul,
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
                                _extraController.extrakurikuler[widget.id].lokasi,
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
                              Text(_extraController.extrakurikuler[widget.id].jadwal,
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
                                _extraController.extrakurikuler[widget.id].jam,
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
                  margin: EdgeInsets.only(left: 26, right: 26, top: 6),
                  child: Text(
                    _extraController.extrakurikuler[widget.id].tentang,
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
                      itemCount: _extraController.extrakurikuler[widget.id].images.length,
                      itemBuilder: (BuildContext context, int index, i) {
                        return Container(
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
                                  _extraController.extrakurikuler[widget.id].images[index].link,
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
                  const SizedBox(height: 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _extraController.extrakurikuler[widget.id].images.map((url) {
                      int index = _extraController.extrakurikuler[widget.id].images.indexOf(url);
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
      ),
    ));
  }
}
