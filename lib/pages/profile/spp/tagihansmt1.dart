// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types

import 'package:aplikasi_si/component/tagihansmt1_section.dart';
import 'package:aplikasi_si/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../component/tagihansmt1_card.dart';
import '../../../model/spp_model.dart';
import 'garisputus.dart';

class DetailSPP extends StatefulWidget {
  final List<SppDatas> sppDatas;
  const DetailSPP({super.key, required this.sppDatas});

  @override
  State<DetailSPP> createState() => _DetailSPPState();
}

class _DetailSPPState extends State<DetailSPP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppColors.contactUsIconColor,
        title: Text('Tagihan ${widget.sppDatas[0].tahunAjaran}'),
      ),
      body: Container(
          margin: EdgeInsets.only(top: 10), child: ListView.builder(
        itemCount: widget.sppDatas.length,
        itemBuilder: (BuildContext context, index){
          return TagihanCard(
              bulan: widget.sppDatas[index].tanggalTagihan.month.toString(),
              jumlahtagihan: widget.sppDatas[index].tagihan,
              status: widget.sppDatas[index].status);
        },
      ),),
    );
  }
}
