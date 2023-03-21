import 'package:flutter/material.dart';

import '../theme/app_text_styles.dart';

class HighlightEventCard extends StatelessWidget {
  var pageRouteE;
  String img;
  String name;
  String jadwal;

  HighlightEventCard({Key? key, required this.pageRouteE, required this.img, required this.name, required this.jadwal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => pageRouteE));
      },
      child: Container(
        width: 240,
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.0),
            image:
            DecorationImage(image: NetworkImage(img), fit: BoxFit.cover)),
        margin: const EdgeInsets.only(right: 10, top: 6, bottom: 8),
        padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: AppTextStyle.appTitlew600s12(Colors.white),
            ),
            Row(
              children: [
                const Icon(Icons.calendar_month_outlined, color: Colors.white, size: 14),
                const SizedBox(width: 4),
                Text(
                  jadwal,
                  style: AppTextStyle.appTitlew400s10(Colors.white),
                ),
              ],
            ),
            // const SizedBox(
            //   width: 210,
            // )
          ],
        ),
      ),
    );
  }
}
