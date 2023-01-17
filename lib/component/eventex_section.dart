// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:aplikasi_si/component/component.dart';
import 'package:flutter/material.dart';

import '../theme/app_text_styles.dart';

class EventexSection extends StatelessWidget {
  const EventexSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: const EdgeInsets.only(top: 26, left: 28, bottom: 20),
            child: Text(
              'Event yang telah berlalu',
              style: AppTextStyle.appTitlew800s20(Colors.black),
            )),
        Row(
          children: [
            EventexCard(
                title: 'Masak \nTradisional',
                peserta: 'Seluruh kelas 7,8 dan 9',
                imgex: 'assets/images/tradisional.png',
                time: '09:00 - 11:00',
                day: '04 Oktober 2022',
                location: 'Halaman Sekolah',
                bunder: 'assets/images/bunder.png'),
            Spacer(),
            Container(
              margin: EdgeInsets.only(right: 28),
              child: EventexCard(
                  title: 'Masak \nTradisional',
                  peserta: 'Seluruh kelas 7,8 dan 9',
                  imgex: 'assets/images/tradisional.png',
                  time: '09:00 - 11:00',
                  day: '04 Oktober 2022',
                  location: 'Halaman Sekolah',
                  bunder: 'assets/images/bunder.png'),
            )
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            EventexCard(
                title: 'Masak \nTradisional',
                peserta: 'Seluruh kelas 7,8 dan 9',
                imgex: 'assets/images/tradisional.png',
                time: '09:00 - 11:00',
                day: '04 Oktober 2022',
                location: 'Halaman Sekolah',
                bunder: 'assets/images/bunder.png'),
            Spacer(),
            Container(
              margin: EdgeInsets.only(right: 28),
              child: EventexCard(
                  title: 'Masak \nTradisional',
                  peserta: 'Seluruh kelas 7,8 dan 9',
                  imgex: 'assets/images/tradisional.png',
                  time: '09:00 - 11:00',
                  day: '04 Oktober 2022',
                  location: 'Halaman Sekolah',
                  bunder: 'assets/images/bunder.png'),
            )
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            EventexCard(
                title: 'Masak \nTradisional',
                peserta: 'Seluruh kelas 7,8 dan 9',
                imgex: 'assets/images/tradisional.png',
                time: '09:00 - 11:00',
                day: '04 Oktober 2022',
                location: 'Halaman Sekolah',
                bunder: 'assets/images/bunder.png'),
            Spacer(),
            Container(
              margin: EdgeInsets.only(right: 28),
              child: EventexCard(
                  title: 'Masak \nTradisional',
                  peserta: 'Seluruh kelas 7,8 dan 9',
                  imgex: 'assets/images/tradisional.png',
                  time: '09:00 - 11:00',
                  day: '04 Oktober 2022',
                  location: 'Halaman Sekolah',
                  bunder: 'assets/images/bunder.png'),
            ),
          ],
        )
      ],
    );
  }
}
