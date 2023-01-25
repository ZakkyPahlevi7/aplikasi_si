import 'package:aplikasi_si/main.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselWithDotsPage extends StatefulWidget {
  final List<String> imgList;
  const CarouselWithDotsPage({Key? key, required this.imgList})
      : super(key: key);
  @override
  State<CarouselWithDotsPage> createState() => _CarouselWithDotsPageState();
}

class _CarouselWithDotsPageState extends State<CarouselWithDotsPage> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = widget.imgList
        .map((item) => Container(
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
