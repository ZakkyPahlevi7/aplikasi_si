import 'package:flutter/material.dart';

import '../theme/theme.dart';

// ignore: must_be_immutable
class CardPrestasi extends StatelessWidget {
  String img;
  String juara;
  String nama;
  String kategori;

  CardPrestasi(
      {Key? key,
      required this.img,
      required this.juara,
      required this.nama,
      required this.kategori
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      margin: const EdgeInsets.only(right: 10, top: 15, bottom: 15),
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
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 4),
            child: Image.asset(
              img,
              width: 36,
            ),
          ),
          const SizedBox(
            width: 6,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                juara,
                overflow: TextOverflow.clip,
                style: AppTextStyle.appTitlew700s10(),
              ),
              Text(
                nama,
                style: AppTextStyle.appTitlew400s10(Colors.black),
              ),
              Text(kategori, style: AppTextStyle.appTitlew400s10(Colors.black)),
            ],
          )
        ],
      ),
    );
  }
}
