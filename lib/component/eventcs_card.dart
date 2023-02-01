// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';

import '../theme/app_text_styles.dart';

class EventcsCard extends StatelessWidget {
  String title;
  String peserta;
  String img;
  String time;
  String day;
  String location;

  EventcsCard({
    Key? key,
    required this.title,
    required this.peserta,
    required this.img,
    required this.time,
    required this.day,
    required this.location,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 28),
      child: CustomPaint(
        painter: RPSCustomPainter(),
        size: Size(100, (100 * 1.6935483870967742).toDouble()),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
          padding: const EdgeInsets.symmetric(vertical: 34, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTextStyle.appTitlew500s20(Colors.white),
              ),
              Text(
                peserta,
                style: AppTextStyle.appTitlew400s12(Colors.white70),
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
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.calendar_month,
                    size: 12,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    day,
                    style: AppTextStyle.appTitlew400s10(Colors.white),
                  )
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.location_on,
                    size: 12,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    location,
                    style: AppTextStyle.appTitlew400s10(Colors.white),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
    ;
  }
}

class RPSCustomPainter extends CustomPainter {
  bool? isFilled;
  @override
  void paint(Canvas canvas, Size size) {
    PaintingStyle.fill;
    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.06601492);
    path_0.cubicTo(
        0,
        size.height * 0.02658206,
        size.width * 0.06023602,
        size.height * -0.003313460,
        size.width * 0.1260220,
        size.height * 0.003469079);
    path_0.lineTo(size.width * 0.9109677, size.height * 0.08439714);
    path_0.cubicTo(size.width * 0.9624409, size.height * 0.08970413, size.width,
        size.height * 0.1160908, size.width, size.height * 0.1469432);
    path_0.lineTo(size.width, size.height * 0.9365079);
    path_0.cubicTo(size.width, size.height * 0.9715746, size.width * 0.9518602,
        size.height, size.width * 0.8924731, size.height);
    path_0.lineTo(size.width * 0.1075269, size.height);
    path_0.cubicTo(size.width * 0.04814145, size.height, 0,
        size.height * 0.9715746, 0, size.height * 0.9365079);
    path_0.lineTo(0, size.height * 0.06601492);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff1468E2).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}