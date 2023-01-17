// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../theme/app_text_styles.dart';
import 'eventcs_card.dart';

class EventcsSection extends StatelessWidget {
  const EventcsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: const EdgeInsets.only(top: 12, left: 28, bottom: 20),
            child: Text(
              'Event yang akan datang',
              style: AppTextStyle.appTitlew800s20(Colors.black),
            )),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              EventcsCard(
                title: 'Camping',
                peserta: 'Seluruh siswa kelas 7 sd 9',
                img: 'assets/images/camping.png',
                time: '12.00 - 00.00',
                bunder: 'assets/images/bunder.png',
                day: '12 Oktober 2022',
                location: 'Halaman Sekolah',
              ),
              EventcsCard(
                title: 'Camping',
                peserta: 'Seluruh siswa kelas 7 sd 9',
                img: 'assets/images/camping.png',
                time: '12.00 - 00.00',
                bunder: 'assets/images/bunder.png',
                day: '12 Oktober 2022',
                location: 'Halaman Sekolah',
              ),
              EventcsCard(
                title: 'Camping',
                peserta: 'Seluruh siswa kelas 7 sd 9',
                img: 'assets/images/camping.png',
                time: '12.00 - 00.00',
                bunder: 'assets/images/bunder.png',
                day: '12 Oktober 2022',
                location: 'Halaman Sekolah',
              ),
              EventcsCard(
                title: 'Camping',
                peserta: 'Seluruh siswa kelas 7 sd 9',
                img: 'assets/images/camping.png',
                time: '12.00 - 00.00',
                bunder: 'assets/images/bunder.png',
                day: '12 Oktober 2022',
                location: 'Halaman Sekolah',
              ),
              EventcsCard(
                title: 'Camping',
                peserta: 'Seluruh siswa kelas 7 sd 9',
                img: 'assets/images/camping.png',
                time: '12.00 - 00.00',
                bunder: 'assets/images/bunder.png',
                day: '12 Oktober 2022',
                location: 'Halaman Sekolah',
              ),
              SizedBox(
                width: 28,
              )
            ],
          ),
        )
      ],
    );
  }
}
