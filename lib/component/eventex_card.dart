// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../theme/app_text_styles.dart';

class EventexCard extends StatelessWidget {
  String title;
  String peserta;
  String imgex;
  String time;
  String bunder;
  String day;
  String location;

  EventexCard(
      {Key? key,
      required this.title,
      required this.peserta,
      required this.imgex,
      required this.time,
      required this.day,
      required this.location,
      required this.bunder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xffFF9790),
          borderRadius: BorderRadius.circular(8.0)),
      margin: const EdgeInsets.only(
        left: 28,
      ),
      padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 13),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTextStyle.appTitlew500s12(),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            peserta,
            style: AppTextStyle.appTitlew400s7(Colors.black45),
          ),
          const SizedBox(
            height: 12,
          ),
          Image.asset(
            imgex,
            width: 110,
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            margin: const EdgeInsets.only(left: 86),
            child: Image.asset(
              bunder,
              width: 24,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              const Icon(
                Icons.calendar_month,
                size: 12,
                color: Colors.black45,
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                day,
                style: AppTextStyle.appTitlew400s8(Colors.black),
              )
            ],
          ),
          Row(
            children: [
              const Icon(
                Icons.location_on,
                size: 12,
                color: Colors.black45,
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                location,
                style: AppTextStyle.appTitlew400s8(Colors.black),
              )
            ],
          )
        ],
      ),
    );
  }
}
