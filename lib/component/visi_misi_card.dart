// ignore_for_file: prefer_const_literals_to_create_immutables, must_be_immutable, camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class visiMisiCard extends StatelessWidget {
  String icon;
  String title;
  String keterangan;

  visiMisiCard(
      {Key? key,
      required this.icon,
      required this.title,
      required this.keterangan})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            icon,
            width: 28,
          ),
          SizedBox(
            height: 4,
          ),
          Text(title,
              style: GoogleFonts.poppins(
                fontSize: 17,
                fontWeight: FontWeight.w700,
              )),
          SizedBox(
            height: 4,
          ),
          Text(
            keterangan,
            style: GoogleFonts.poppins(
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}

// class VisiMisiCard extends StatefulWidget {
//   const VisiMisiCard({Key? key}) : super(key: key);

//   @override
//   State<VisiMisiCard> createState() => _VisiMisiCardState();
// }

// class _VisiMisiCardState extends State<VisiMisiCard> {
//   // int currentIndex = 0;

//   // List<String> images = [
//   //   'assets/images/misiskolah.png',
//   //   'assets/images/visitujuan.png'
//   // ];

//   @override
//   Widget build(BuildContext context) {
    // return Scaffold();
    // SizedBox(
    //   height: 300,
    //   width: double.infinity,
    //   child: PageView.builder(
    //     onPageChanged: (index) {
    //       setState(() {
    //         currentIndex = index;
    //       });
    //     },
    //     itemCount: images.length,
    //     itemBuilder: (context, index) {
    //       return Padding(
    //         padding:
    //             const EdgeInsets.only(left: 28, bottom: 0, right: 28, top: 20),
    //         child: SizedBox(
    //           width: double.infinity,
    //           child: Image.asset(
    //             images[index % images.length],
    //             fit: BoxFit.fill,
    //             width: 200,
    //           ),
    //         ),
    //       );
    //     },
    //   ),
    // );
//   }
// }
