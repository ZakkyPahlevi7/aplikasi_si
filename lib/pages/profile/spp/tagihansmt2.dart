// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types

import 'package:aplikasi_si/component/tagihansmt1_section.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../component/tagihansmt2_section.dart';
import 'garisputus.dart';

class tagihanSemesterDua extends StatefulWidget {
  const tagihanSemesterDua({super.key});

  @override
  State<tagihanSemesterDua> createState() => _tagihanSemesterDuaState();
}

class _tagihanSemesterDuaState extends State<tagihanSemesterDua> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Tagihan Semester 2'),
      ),
      body: Container(
          margin: EdgeInsets.only(top: 10), child: TagihanSmt2Section()),
    );
  }
}
