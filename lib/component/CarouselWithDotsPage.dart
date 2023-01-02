// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, unused_local_variable

import 'package:aplikasi_si/main.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselWithDotsPage extends StatefulWidget {
  List<String> imgList;
  CarouselWithDotsPage({Key? key, required this.imgList}) : super(key: key);

  @override
  State<CarouselWithDotsPage> createState() => _CarouselWithDotsPageState();
}

class _CarouselWithDotsPageState extends State<CarouselWithDotsPage> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = widget.imgList
        .map((item) => Container(
              margin: EdgeInsets.only(
                top: 25,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
                child: Stack(
                  children: [
                    Image.asset(
                      item,
                      fit: BoxFit.contain,
                      width: 900,
                    ),
                  ],
                ),
              ),
            ))
        .toList();

    return Column(
      children: [
        CarouselSlider(
            items: imageSliders,
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
            int index = imgList.indexOf(url);
            return Container(
              width: 8,
              height: 8,
              margin: EdgeInsets.symmetric(vertical: 0, horizontal: 3),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index
                      ? Color.fromRGBO(0, 0, 0, 0.9)
                      : Color.fromRGBO(0, 0, 0, 0.4)),
            );
          }).toList(),
        ),
      ],
    );
  }
}
