// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';

import '../theme/app_text_styles.dart';

class TrapeziumClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width * 2 / 3, 0.0);
    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(TrapeziumClipper oldClipper) => false;
}

class EventcsCard extends StatelessWidget {
  String title;
  String peserta;
  String img;
  String time;
  String bunder;
  String day;
  String location;

  EventcsCard(
      {Key? key,
      required this.title,
      required this.peserta,
      required this.img,
      required this.time,
      required this.day,
      required this.location,
      required this.bunder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TrapeziumClipper(),
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xffEDCC5D),
            borderRadius: BorderRadius.circular(8.0)),
        margin: EdgeInsets.only(left: 28),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppTextStyle.appTitlew500s20(Colors.black),
            ),
            Text(
              peserta,
              style: AppTextStyle.appTitlew400s12(Colors.black45),
            ),
            const SizedBox(
              height: 24,
            ),
            Image.asset(
              img,
              width: 160,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(left: 126),
              child: Image.asset(
                bunder,
                width: 34,
              ),
            ),
            const SizedBox(
              height: 12,
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
                  style: AppTextStyle.appTitlew400s10(Colors.black),
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
                  style: AppTextStyle.appTitlew400s10(Colors.black),
                )
              ],
            )
          ],
        ),
      ),
    );
    ;
  }
}
