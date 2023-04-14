import 'dart:io';

import 'package:aplikasi_si/controller/dashboard_controller.dart';
import 'package:aplikasi_si/main.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../model/model_header.dart';

class CarouselWithDotsPage extends StatefulWidget {
  const CarouselWithDotsPage(
      {Key? key})
      : super(key: key);
  @override
  State<CarouselWithDotsPage> createState() => _CarouselWithDotsPageState();
}

class _CarouselWithDotsPageState extends State<CarouselWithDotsPage> {
  int _current = 0;
  final _controller = Get.put(DashboardController());

  @override
  void initState() {
    _initData();
    super.initState();
  }

  Future<Null> _initData() async {
    await _controller.loadData(withLoading: true);
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() => _controller.isLoading.value ? const Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Center(child: CircularProgressIndicator()),
    ) : Column(
      children: [
        CarouselSlider.builder(
            itemCount: _controller.header.length,
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
                        _controller.header[index].link,
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
          children: _controller.header.map((url) {
            int index = _controller.header.indexOf(url);
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
    ));
  }
}


// onPageChanged: (index, reason) {
//                   setState(() {
//                     _current = index;
//                   });
//                 }
