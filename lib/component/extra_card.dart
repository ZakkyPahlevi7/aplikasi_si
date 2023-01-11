import 'package:flutter/material.dart';

import '../theme/theme.dart';

// ignore: must_be_immutable
class ExtraCard extends StatelessWidget {
  String img;
  String name;
  String jadwal;
  ExtraCard({Key? key, required this.img, required this.name, required this.jadwal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.0),
            image: DecorationImage(
                image: AssetImage(img),
                fit: BoxFit.cover)),
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
