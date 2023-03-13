// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../theme/app_text_styles.dart';

class EventexCard extends StatelessWidget {
  String title;
  String peserta;
  String imgex;
  String day;
  String location;
  var pageRouteE;

  EventexCard(
      {Key? key,
      required this.title,
      required this.peserta,
      required this.imgex,
      required this.day,
      required this.location,
      required this.pageRouteE})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.only(
      //   left: 28,
      // ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => pageRouteE));
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Color(0xff0962E0)),
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTextStyle.appTitlew500s14(Colors.white),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                peserta,
                style: AppTextStyle.appTitlew400s9(Colors.white70),
              ),
              const SizedBox(
                height: 12,
              ),
              Image.network(
                imgex,
                width: 122,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.calendar_month,
                    size: 14,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Expanded(
                    child: Text(
                      day,
                      style: AppTextStyle.appTitlew400s10(Colors.white),
                      overflow: TextOverflow.clip,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              Expanded(
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 14,
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
