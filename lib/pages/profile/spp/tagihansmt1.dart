// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types

import 'package:aplikasi_si/component/tagihansmt1_section.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'garisputus.dart';

class tagihanSemesterSatu extends StatefulWidget {
  const tagihanSemesterSatu({super.key});

  @override
  State<tagihanSemesterSatu> createState() => _tagihanSemesterSatuState();
}

class _tagihanSemesterSatuState extends State<tagihanSemesterSatu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Tagihan Semester 1'),
      ),
      body: Container(
          margin: EdgeInsets.only(top: 10), child: TagihanSmt1Section()),
    );
  }
}
