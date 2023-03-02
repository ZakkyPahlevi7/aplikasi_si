// ignore_for_file: prefer_const_constructors

import 'package:aplikasi_si/component/tagihansmt1_card.dart';
import 'package:aplikasi_si/component/tagihansmt2_card.dart';
import 'package:aplikasi_si/pages/profile/spp/garisputus.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TagihanSmt2Section extends StatefulWidget {
  const TagihanSmt2Section({super.key});

  @override
  State<TagihanSmt2Section> createState() => _TagihanSmt2SectionState();
}

class _TagihanSmt2SectionState extends State<TagihanSmt2Section> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TagihanSmt2Card(
              bulan: 'Januari',
              tagihan: 'Tagihan',
              jumlahtagihan: '100.000',
              status: 'Status',
              kondisistatus: 'Lunas'),
          TagihanSmt2Card(
              bulan: 'Januari',
              tagihan: 'Tagihan',
              jumlahtagihan: '100.000',
              status: 'Status',
              kondisistatus: 'Lunas'),
          TagihanSmt2Card(
              bulan: 'Januari',
              tagihan: 'Tagihan',
              jumlahtagihan: '100.000',
              status: 'Status',
              kondisistatus: 'Lunas'),
          TagihanSmt2Card(
              bulan: 'Januari',
              tagihan: 'Tagihan',
              jumlahtagihan: '100.000',
              status: 'Status',
              kondisistatus: 'Lunas'),
          TagihanSmt2Card(
              bulan: 'Januari',
              tagihan: 'Tagihan',
              jumlahtagihan: '100.000',
              status: 'Status',
              kondisistatus: 'Lunas'),
          TagihanSmt2Card(
              bulan: 'Januari',
              tagihan: 'Tagihan',
              jumlahtagihan: '100.000',
              status: 'Status',
              kondisistatus: 'Lunas'),
          SizedBox(
            height: 26,
          ),
          DashedLine(
            height: 20,
            width: 308,
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10, bottom: 14),
            margin: EdgeInsets.only(right: 26, left: 26, bottom: 16),
            child: Row(
              children: [
                Text('Total Tagihan',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    )),
                Spacer(),
                Text('600.000',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
