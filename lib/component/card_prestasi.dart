import 'package:flutter/material.dart';

import '../theme/theme.dart';

// ignore: must_be_immutable
class CardPrestasi extends StatelessWidget {
  String img;
  String juara;
  String tingkat;
  String kategori;

  CardPrestasi(
      {Key? key,
      required this.img,
      required this.juara,
      required this.tingkat,
      required this.kategori})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 250,
      margin: const EdgeInsets.only(top: 12, bottom: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black.withOpacity(0.2)),
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
            child: Image.network(
              img,
              width: 36,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                juara,
                overflow: TextOverflow.clip,
                style: AppTextStyle.appTitlew700s10(),
              ),
              Text(
                tingkat,
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
