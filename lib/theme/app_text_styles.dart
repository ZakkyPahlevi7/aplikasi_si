import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static appTitlew700s28(Color color){
    return GoogleFonts.poppins(
        fontSize: 28,
        fontWeight: FontWeight.w700,
        color: color);
  }

  static appTitlew700s14(){
    return  GoogleFonts.poppins(
        fontSize: 14, fontWeight: FontWeight.w700);
  }

  static appTitlew400s18(Color color){
    return GoogleFonts.poppins(
        fontSize: 18,
        fontWeight: FontWeight.w400,
        color: color);
  }

  static appTitlew400s12h13(){
    return GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 1.3);
  }

  static appTitlew400s12h12(){
    return GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 1.2);
  }

}