import 'package:flutter/material.dart';

import '../theme/theme.dart';

// ignore: must_be_immutable
class ExtraCard extends StatelessWidget {
  var pageRouteE;
  String img;
  String name;
  String jadwal;
  ExtraCard({
    Key? key,
    required this.img,
    required this.name,
    required this.jadwal,
    required this.pageRouteE
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => pageRouteE));
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.0),
            image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover)),
        margin: const EdgeInsets.only(right: 10, top: 6),
        padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 80,
            ),
            Text(
              name,
              style: AppTextStyle.appTitlew600s12(Colors.white),
            ),
            Text(
              jadwal,
              style: AppTextStyle.appTitlew400s10(Colors.white),
            ),
            const SizedBox(
              width: 210,
            )
          ],
        ),
      ),
    );
  }
}

// CustomPaint(
            //   painter: RPSCustomPainter(),
            //   size: Size(100, (100 * 1.6935483870967742).toDouble()),
            // ),  

// class RPSCustomPainter extends CustomPainter {
//   bool? isFilled;
//   @override
//   void paint(Canvas canvas, Size size) {
//     PaintingStyle.fill;
//     Path path_0 = Path();
//     path_0.moveTo(0, size.height * 0.06601492);
//     path_0.cubicTo(
//         0,
//         size.height * 0.02658206,
//         size.width * 0.06023602,
//         size.height * -0.003313460,
//         size.width * 0.1260220,
//         size.height * 0.003469079);
//     path_0.lineTo(size.width * 0.9109677, size.height * 0.08439714);
//     path_0.cubicTo(size.width * 0.9624409, size.height * 0.08970413, size.width,
//         size.height * 0.1160908, size.width, size.height * 0.1469432);
//     path_0.lineTo(size.width, size.height * 0.9365079);
//     path_0.cubicTo(size.width, size.height * 0.9715746, size.width * 0.9518602,
//         size.height, size.width * 0.8924731, size.height);
//     path_0.lineTo(size.width * 0.1075269, size.height);
//     path_0.cubicTo(size.width * 0.04814145, size.height, 0,
//         size.height * 0.9715746, 0, size.height * 0.9365079);
//     path_0.lineTo(0, size.height * 0.06601492);
//     path_0.close();

//     Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
//     paint_0_fill.color = Color(0xff1468E2).withOpacity(1.0);
//     canvas.drawPath(path_0, paint_0_fill);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }