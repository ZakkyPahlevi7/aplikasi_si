import 'package:aplikasi_si/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  String hintText;
  String label;
  TextEditingController controller;
  CustomTextField({Key? key, required this.hintText, required this.controller, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label,
              style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xffD6D6D6))),
          const SizedBox(height: 4),
          TextField(
            controller: controller,
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                hintText: hintText,
                hintStyle: AppTextStyle.appTitlew500s12(Colors.black26),
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xffD6D6D6)),
                    borderRadius: BorderRadius.circular(6.0)),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xff1468E2)),
                    borderRadius: BorderRadius.circular(6.0))),
          ),
        ],
      ),
    );
  }
}
