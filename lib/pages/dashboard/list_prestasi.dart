// ignore_for_file: avoid_unnecessary_containers, unused_import

import 'package:aplikasi_si/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_si/bottom_navbar.dart';

import '../../theme/app_colors.dart';

class ListPrestasiPage extends StatefulWidget {
  const ListPrestasiPage({Key? key}) : super(key: key);

  @override
  State<ListPrestasiPage> createState() => _ListPrestasiPageState();
}

class _ListPrestasiPageState extends State<ListPrestasiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prestasi'),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 17,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 2.5,
                        spreadRadius: 0.9,
                        color: Colors.black.withOpacity(0.1))
                  ],
                ),
                margin: const EdgeInsets.symmetric(horizontal: 22),
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 13),
                child: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/images/juara3.png',
                        width: 50,
                      ),
                    ),
                    const SizedBox(
                      width: 28,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Juara 3 Tingkat SMP Kota \nDepok',
                          style: AppTextStyle.appTitlew700s14(),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Lomba Futsal ALMAZFEST',
                          style: AppTextStyle.appTitlew400s12h13(),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 2.5,
                        spreadRadius: 0.9,
                        color: Colors.black.withOpacity(0.1))
                  ],
                ),
                margin: const EdgeInsets.symmetric(horizontal: 22),
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 13),
                child: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/images/juara1.png',
                        width: 50,
                      ),
                    ),
                    SizedBox(
                      width: 28,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Juara 1 Tingkat Depok',
                          style: AppTextStyle.appTitlew700s14(),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Lomba Cerdas Cermat',
                          style: AppTextStyle.appTitlew400s12h13(),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 2.5,
                        spreadRadius: 0.9,
                        color: Colors.black.withOpacity(0.1))
                  ],
                ),
                margin: const EdgeInsets.symmetric(horizontal: 22),
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 13),
                child: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/images/juara3.png',
                        width: 50,
                      ),
                    ),
                    SizedBox(
                      width: 28,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Juara 3 Tingkat Depok',
                          style: AppTextStyle.appTitlew700s14(),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Lomba Tahfidz',
                          style: AppTextStyle.appTitlew400s12h13(),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 2.5,
                        spreadRadius: 0.9,
                        color: Colors.black.withOpacity(0.1))
                  ],
                ),
                margin: const EdgeInsets.symmetric(horizontal: 22),
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 13),
                child: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/images/juara3.png',
                        width: 50,
                      ),
                    ),
                    SizedBox(
                      width: 28,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Juara 3 Event Diprolution',
                          style: AppTextStyle.appTitlew700s14(),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Lomba Kaligrafi',
                          style: AppTextStyle.appTitlew400s12h13(),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 2.5,
                        spreadRadius: 0.9,
                        color: Colors.black.withOpacity(0.1))
                  ],
                ),
                margin: const EdgeInsets.symmetric(horizontal: 22),
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 13),
                child: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/images/juara3.png',
                        width: 50,
                      ),
                    ),
                    SizedBox(
                      width: 28,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Juara 3 Event Diprolution',
                          style: AppTextStyle.appTitlew700s14(),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Lomba Desain Karakter',
                          style: AppTextStyle.appTitlew400s12h13(),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 2.5,
                        spreadRadius: 0.9,
                        color: Colors.black.withOpacity(0.1))
                  ],
                ),
                margin: const EdgeInsets.symmetric(horizontal: 22),
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 13),
                child: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/images/juara3.png',
                        width: 50,
                      ),
                    ),
                    SizedBox(
                      width: 28,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Juara 3 Event Tranzforst',
                          style: AppTextStyle.appTitlew700s14(),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Lomba MHQ',
                          style: AppTextStyle.appTitlew400s12h13(),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 2.5,
                        spreadRadius: 0.9,
                        color: Colors.black.withOpacity(0.1))
                  ],
                ),
                margin: const EdgeInsets.symmetric(horizontal: 22),
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 13),
                child: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/images/juara1.png',
                        width: 50,
                      ),
                    ),
                    SizedBox(
                      width: 28,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Juara 1 Gebyar Muharram',
                          style: AppTextStyle.appTitlew700s14(),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Lomba Tahfidz',
                          style: AppTextStyle.appTitlew400s12h13(),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 2.5,
                        spreadRadius: 0.9,
                        color: Colors.black.withOpacity(0.1))
                  ],
                ),
                margin: const EdgeInsets.symmetric(horizontal: 22),
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 13),
                child: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/images/juara2.png',
                        width: 50,
                      ),
                    ),
                    SizedBox(
                      width: 28,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Juara 2 Gebyar Muharram',
                          style: AppTextStyle.appTitlew700s14(),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Lomba MTQ',
                          style: AppTextStyle.appTitlew400s12h13(),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 2.5,
                        spreadRadius: 0.9,
                        color: Colors.black.withOpacity(0.1))
                  ],
                ),
                margin: const EdgeInsets.symmetric(horizontal: 22),
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 13),
                child: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/images/juara2.png',
                        width: 50,
                      ),
                    ),
                    SizedBox(
                      width: 28,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Juara 2 Lipi',
                          style: AppTextStyle.appTitlew700s14(),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Lomba Science Art',
                          style: AppTextStyle.appTitlew400s12h13(),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 2.5,
                        spreadRadius: 0.9,
                        color: Colors.black.withOpacity(0.1))
                  ],
                ),
                margin: const EdgeInsets.symmetric(horizontal: 22),
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 13),
                child: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/images/juara2.png',
                        width: 50,
                      ),
                    ),
                    SizedBox(
                      width: 28,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Juara 2 Jagat Arsy Festival',
                          style: AppTextStyle.appTitlew700s14(),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Lomba Kaligrafi',
                          style: AppTextStyle.appTitlew400s12h13(),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 2.5,
                        spreadRadius: 0.9,
                        color: Colors.black.withOpacity(0.1))
                  ],
                ),
                margin: const EdgeInsets.symmetric(horizontal: 22),
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 13),
                child: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/images/juara1.png',
                        width: 50,
                      ),
                    ),
                    SizedBox(
                      width: 28,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Juara 1 Gemilang DU',
                          style: AppTextStyle.appTitlew700s14(),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Lomba Tahfidz',
                          style: AppTextStyle.appTitlew400s12h13(),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 2.5,
                        spreadRadius: 0.9,
                        color: Colors.black.withOpacity(0.1))
                  ],
                ),
                margin: const EdgeInsets.symmetric(horizontal: 22),
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 13),
                child: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/images/juara1.png',
                        width: 50,
                      ),
                    ),
                    SizedBox(
                      width: 28,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Juara 1 Lomba Pramuka',
                          style: AppTextStyle.appTitlew700s14(),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Lomba Regu Putra Terbaik',
                          style: AppTextStyle.appTitlew400s12h13(),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 2.5,
                        spreadRadius: 0.9,
                        color: Colors.black.withOpacity(0.1))
                  ],
                ),
                margin: const EdgeInsets.symmetric(horizontal: 22),
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 13),
                child: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/images/juara1.png',
                        width: 50,
                      ),
                    ),
                    SizedBox(
                      width: 28,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Juara 1 Jagat Arsy Festival',
                          style: AppTextStyle.appTitlew700s14(),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Lomba MHQ',
                          style: AppTextStyle.appTitlew400s12h13(),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 14,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
