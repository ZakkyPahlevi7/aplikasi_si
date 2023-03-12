// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:aplikasi_si/theme/theme.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CivitasCard extends StatelessWidget {
  var pageRoute;
  String text;
  String img;
  CivitasCard({
    Key? key,
    required this.img,
    required this.text,
    required this.pageRoute,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => pageRoute));
      },
      child: Container(
        width: 160,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0),
            color: const Color(0xff0962E0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              img,
              width: 22,
            ),
            Text(text, style: AppTextStyle.appTitlew500s12(Colors.white))
          ],
        ),
      ),
    );
  }
}
