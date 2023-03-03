// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TagihanSmt1Card extends StatelessWidget {
  String bulan;
  String tagihan;
  String jumlahtagihan;
  String status;
  String kondisistatus;

  TagihanSmt1Card(
      {Key? key,
      required this.bulan,
      required this.tagihan,
      required this.jumlahtagihan,
      required this.status,
      required this.kondisistatus})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 8, bottom: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              blurRadius: 1.5,
              spreadRadius: 0.8,
              color: Colors.black.withOpacity(0.2))
        ],
      ),
      margin: EdgeInsets.only(top: 20, right: 26, left: 26),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            bulan,
            style:
                GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 2,
          ),
          Row(
            children: [
              Text(
                tagihan,
                style: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff464646)),
              ),
              Spacer(),
              Text(jumlahtagihan,
                  style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.6,
                      color: Color(0xff464646)))
            ],
          ),
          SizedBox(
            height: 3,
          ),
          Row(
            children: [
              Text(status,
                  style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff464646))),
              Spacer(),
              Text(kondisistatus,
                  style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff3A8E31)))
            ],
          ),
        ],
      ),
    );
  }
}
