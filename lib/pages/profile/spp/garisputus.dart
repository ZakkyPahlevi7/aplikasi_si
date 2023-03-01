import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Color(0xff6C6C6C)
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    double dashWidth = 7;
    double dashSpace = 5;
    double startX = 0;

    while (startX < size.width) {
      canvas.drawLine(Offset(startX, 0), Offset(startX + dashWidth, 0), paint);
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(DashedLinePainter oldDelegate) => false;
}

class DashedLine extends StatelessWidget {
  final double width;
  final double height;

  DashedLine({required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 27),
      child: CustomPaint(
        size: Size(width, height),
        painter: DashedLinePainter(),
      ),
    );
  }
}
