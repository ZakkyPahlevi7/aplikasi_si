import 'dart:io';

import 'package:aplikasi_si/controller/dashboard_controller.dart';
import 'package:aplikasi_si/main.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../model/model_header.dart';

class CarouselWithDotsPage extends StatefulWidget {
  // final List<HeaderData>? gambarheader;
  final DashboardController? dashboardController;
  final List<String> imgList;
  const CarouselWithDotsPage(
      {Key? key,
      required this.imgList,
      // this.gambarheader,
      this.dashboardController})
      : super(key: key);
  @override
  State<CarouselWithDotsPage> createState() => _CarouselWithDotsPageState();
}

class _CarouselWithDotsPageState extends State<CarouselWithDotsPage> {
  int _current = 0;
  final _controller = Get.put(DashboardController());

  // @override
  // void initState() {
  //   _initData();
  //   super.initState();
  // }

  // Future<Null> _initData() async {
  //   await widget.dashboardController!.loadData(withLoading: true);
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
            itemCount: imgList.length,
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
                      Image.asset(
                        // _controller.header[index].foto!,
                        // widget.gambarheader![index].foto!,
                        imgList[index],
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.imgList.map((url) {
            int index = widget.imgList.indexOf(url);
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
    );
  }
}


// onPageChanged: (index, reason) {
//                   setState(() {
//                     _current = index;
//                   });
//                 }
