// ignore_for_file: prefer_const_literals_to_create_immutables, unused_import, prefer_const_constructors

import 'package:aplikasi_si/component/component.dart';
import 'package:flutter/material.dart';

import '../../theme/app_text_styles.dart';

class EventPage extends StatefulWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            children: [
              const EventcsSection(),
              const EventexSection(),
              SizedBox(
                height: 20,
              )
            ],
          )
          // Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     Container(
          //         margin: const EdgeInsets.only(top: 30, left: 32, bottom: 20),
          //         child: Text(
          //           'Event yang akan datang',
          //           style: AppTextStyle.appTitlew800s20(Colors.black),
          //         )),
          //     SingleChildScrollView(
          //       scrollDirection: Axis.horizontal,
          //       child: Row(
          //         children: [
          //           Container(
          //             decoration: BoxDecoration(
          //                 color: const Color(0xffEDCC5D),
          //                 borderRadius: BorderRadius.circular(8.0)),
          //             margin: const EdgeInsets.only(left: 33),
          //             padding: const EdgeInsets.symmetric(
          //                 vertical: 16, horizontal: 16),
          //             child: Column(
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               children: [
          //                 Text(
          //                   'Camping',
          //                   style: AppTextStyle.appTitlew500s20(Colors.black),
          //                 ),
          //                 Text(
          //                   'Kelas 7-9',
          //                   style: AppTextStyle.appTitlew400s12(Colors.black45),
          //                 ),
          //                 const SizedBox(
          //                   height: 24,
          //                 ),
          //                 Image.asset(
          //                   'assets/images/camping.png',
          //                   width: 160,
          //                 ),
          //                 const SizedBox(
          //                   height: 10,
          //                 ),
          //                 Container(
          //                   margin: const EdgeInsets.only(left: 126),
          //                   child: Image.asset(
          //                     'assets/images/bunder.png',
          //                     width: 34,
          //                   ),
          //                 ),
          //                 const SizedBox(
          //                   height: 12,
          //                 ),
          //                 Row(
          //                   children: [
          //                     const Icon(
          //                       Icons.calendar_month,
          //                       size: 12,
          //                       color: Colors.black45,
          //                     ),
          //                     const SizedBox(
          //                       width: 4,
          //                     ),
          //                     Text(
          //                       '12 Oktober 2022',
          //                       style:
          //                           AppTextStyle.appTitlew400s10(Colors.black),
          //                     )
          //                   ],
          //                 ),
          //                 Row(
          //                   children: [
          //                     const Icon(
          //                       Icons.location_on,
          //                       size: 12,
          //                       color: Colors.black45,
          //                     ),
          //                     const SizedBox(
          //                       width: 4,
          //                     ),
          //                     Text(
          //                       'Halaman Sekolah',
          //                       style:
          //                           AppTextStyle.appTitlew400s10(Colors.black),
          //                     )
          //                   ],
          //                 )
          //               ],
          //             ),
          //           ),
          //           Container(
          //             decoration: BoxDecoration(
          //                 color: const Color(0xff93E396),
          //                 borderRadius: BorderRadius.circular(8.0)),
          //             margin: const EdgeInsets.only(left: 20),
          //             padding: const EdgeInsets.symmetric(
          //                 vertical: 16, horizontal: 16),
          //             child: Column(
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               children: [
          //                 Text(
          //                   'Live Musik',
          //                   style: AppTextStyle.appTitlew500s20(Colors.black),
          //                 ),
          //                 Text(
          //                   'Seluruh siswa',
          //                   style: AppTextStyle.appTitlew400s12(Colors.black45),
          //                 ),
          //                 const SizedBox(
          //                   height: 24,
          //                 ),
          //                 Image.asset(
          //                   'assets/images/livemusik.png',
          //                   width: 160,
          //                 ),
          //                 const SizedBox(
          //                   height: 10,
          //                 ),
          //                 Container(
          //                   margin: const EdgeInsets.only(left: 126),
          //                   child: Image.asset(
          //                     'assets/images/bunder.png',
          //                     width: 34,
          //                   ),
          //                 ),
          //                 const SizedBox(
          //                   height: 12,
          //                 ),
          //                 Row(
          //                   children: [
          //                     const Icon(
          //                       Icons.calendar_month,
          //                       size: 12,
          //                       color: Colors.black45,
          //                     ),
          //                     const SizedBox(
          //                       width: 4,
          //                     ),
          //                     Text(
          //                       '12 September 2022',
          //                       style:
          //                           AppTextStyle.appTitlew400s10(Colors.black),
          //                     )
          //                   ],
          //                 ),
          //                 Row(
          //                   children: [
          //                     const Icon(
          //                       Icons.location_on,
          //                       size: 12,
          //                       color: Colors.black45,
          //                     ),
          //                     const SizedBox(
          //                       width: 4,
          //                     ),
          //                     Text(
          //                       'Studio Sekolah',
          //                       style:
          //                           AppTextStyle.appTitlew400s10(Colors.black),
          //                     )
          //                   ],
          //                 )
          //               ],
          //             ),
          //           ),
          //           Container(
          //             decoration: BoxDecoration(
          //                 color: const Color(0xff85B6FF),
          //                 borderRadius: BorderRadius.circular(8.0)),
          //             margin: const EdgeInsets.only(left: 20),
          //             padding: const EdgeInsets.symmetric(
          //                 vertical: 16, horizontal: 16),
          //             child: Column(
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               children: [
          //                 Text(
          //                   'Cosplay',
          //                   style: AppTextStyle.appTitlew500s20(Colors.black),
          //                 ),
          //                 Text(
          //                   'Seluruh siswa',
          //                   style: AppTextStyle.appTitlew400s12(Colors.black45),
          //                 ),
          //                 const SizedBox(
          //                   height: 24,
          //                 ),
          //                 Image.asset(
          //                   'assets/images/cosplay.png',
          //                   width: 160,
          //                 ),
          //                 const SizedBox(
          //                   height: 10,
          //                 ),
          //                 Container(
          //                   margin: const EdgeInsets.only(left: 126),
          //                   child: Image.asset(
          //                     'assets/images/bunder.png',
          //                     width: 34,
          //                   ),
          //                 ),
          //                 const SizedBox(
          //                   height: 12,
          //                 ),
          //                 Row(
          //                   children: [
          //                     const Icon(
          //                       Icons.calendar_month,
          //                       size: 12,
          //                       color: Colors.black45,
          //                     ),
          //                     const SizedBox(
          //                       width: 4,
          //                     ),
          //                     Text(
          //                       '10 November 2022',
          //                       style:
          //                           AppTextStyle.appTitlew400s10(Colors.black),
          //                     )
          //                   ],
          //                 ),
          //                 Row(
          //                   children: [
          //                     const Icon(
          //                       Icons.location_on,
          //                       size: 12,
          //                       color: Colors.black45,
          //                     ),
          //                     const SizedBox(
          //                       width: 4,
          //                     ),
          //                     Text(
          //                       'Halaman Sekolah',
          //                       style:
          //                           AppTextStyle.appTitlew400s10(Colors.black),
          //                     )
          //                   ],
          //                 )
          //               ],
          //             ),
          //           ),
          //           Container(
          //             decoration: BoxDecoration(
          //                 color: const Color(0xffFF9790),
          //                 borderRadius: BorderRadius.circular(8.0)),
          //             margin: const EdgeInsets.only(left: 20),
          //             padding: const EdgeInsets.symmetric(
          //                 vertical: 16, horizontal: 16),
          //             child: Column(
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               children: [
          //                 Text(
          //                   'Teater',
          //                   style: AppTextStyle.appTitlew500s20(Colors.black),
          //                 ),
          //                 Text(
          //                   'Seluruh siswa',
          //                   style: AppTextStyle.appTitlew400s12(Colors.black45),
          //                 ),
          //                 const SizedBox(
          //                   height: 24,
          //                 ),
          //                 Image.asset(
          //                   'assets/images/teater.png',
          //                   width: 160,
          //                 ),
          //                 const SizedBox(
          //                   height: 10,
          //                 ),
          //                 Container(
          //                   margin: const EdgeInsets.only(left: 126),
          //                   child: Image.asset(
          //                     'assets/images/bunder.png',
          //                     width: 34,
          //                   ),
          //                 ),
          //                 const SizedBox(
          //                   height: 12,
          //                 ),
          //                 Row(
          //                   children: [
          //                     const Icon(
          //                       Icons.calendar_month,
          //                       size: 12,
          //                       color: Colors.black45,
          //                     ),
          //                     const SizedBox(
          //                       width: 4,
          //                     ),
          //                     Text(
          //                       '25 November 2022',
          //                       style:
          //                           AppTextStyle.appTitlew400s10(Colors.black),
          //                     )
          //                   ],
          //                 ),
          //                 Row(
          //                   children: [
          //                     const Icon(
          //                       Icons.location_on,
          //                       size: 12,
          //                       color: Colors.black45,
          //                     ),
          //                     const SizedBox(
          //                       width: 4,
          //                     ),
          //                     Text(
          //                       'Aula Sekolah',
          //                       style:
          //                           AppTextStyle.appTitlew400s10(Colors.black),
          //                     )
          //                   ],
          //                 )
          //               ],
          //             ),
          //           ),
          //           const SizedBox(
          //             width: 33,
          //           )
          //         ],
          //       ),
          //     ),
          //     Container(
          //         margin: const EdgeInsets.only(top: 26, left: 32, bottom: 20),
          //         child: Text(
          //           'Event yang telah berlalu',
          //           style: AppTextStyle.appTitlew800s20(Colors.black),
          //         )),
          //     Row(
          //       children: [
          //         Container(
          //           decoration: BoxDecoration(
          //               color: const Color(0xffFF9790),
          //               borderRadius: BorderRadius.circular(8.0)),
          //           margin: const EdgeInsets.only(left: 33),
          //           padding: const EdgeInsets.symmetric(
          //               vertical: 13, horizontal: 13),
          //           child: Column(
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: [
          //               Text(
          //                 'Masak \nTradisional',
          //                 style: AppTextStyle.appTitlew500s12(),
          //               ),
          //               const SizedBox(
          //                 height: 2,
          //               ),
          //               Text(
          //                 'Seluruh kelas 7, 8 dan 9',
          //                 style: AppTextStyle.appTitlew400s7(Colors.black45),
          //               ),
          //               const SizedBox(
          //                 height: 12,
          //               ),
          //               Image.asset(
          //                 'assets/images/tradisional.png',
          //                 width: 110,
          //               ),
          //               const SizedBox(
          //                 height: 8,
          //               ),
          //               Container(
          //                 margin: const EdgeInsets.only(left: 86),
          //                 child: Image.asset(
          //                   'assets/images/bunder.png',
          //                   width: 24,
          //                 ),
          //               ),
          //               const SizedBox(
          //                 height: 8,
          //               ),
          //               Row(
          //                 children: [
          //                   const Icon(
          //                     Icons.calendar_month,
          //                     size: 12,
          //                     color: Colors.black45,
          //                   ),
          //                   const SizedBox(
          //                     width: 4,
          //                   ),
          //                   Text(
          //                     '04 Oktober 2022',
          //                     style: AppTextStyle.appTitlew400s8(Colors.black),
          //                   )
          //                 ],
          //               ),
          //               Row(
          //                 children: [
          //                   const Icon(
          //                     Icons.location_on,
          //                     size: 12,
          //                     color: Colors.black45,
          //                   ),
          //                   const SizedBox(
          //                     width: 4,
          //                   ),
          //                   Text(
          //                     'Aula Sekolah',
          //                     style: AppTextStyle.appTitlew400s8(Colors.black),
          //                   )
          //                 ],
          //               )
          //             ],
          //           ),
          //         ),
          //         const Spacer(),
          //         Container(
          //           decoration: BoxDecoration(
          //               color: const Color(0xffEDCC5D),
          //               borderRadius: BorderRadius.circular(8.0)),
          //           margin: const EdgeInsets.only(right: 33),
          //           padding: const EdgeInsets.symmetric(
          //               vertical: 13, horizontal: 13),
          //           child: Column(
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: [
          //               Text(
          //                 'Pameran \nKelas 9',
          //                 style: AppTextStyle.appTitlew500s13h12(Colors.black),
          //               ),
          //               const SizedBox(
          //                 height: 2,
          //               ),
          //               Text(
          //                 'Seluruh kelas 7, 8 dan 9',
          //                 style: AppTextStyle.appTitlew400s7(Colors.black45),
          //               ),
          //               const SizedBox(
          //                 height: 12,
          //               ),
          //               Image.asset(
          //                 'assets/images/pameran.png',
          //                 width: 110,
          //               ),
          //               const SizedBox(
          //                 height: 8,
          //               ),
          //               Container(
          //                 margin: const EdgeInsets.only(left: 86),
          //                 child: Image.asset(
          //                   'assets/images/bunder.png',
          //                   width: 24,
          //                 ),
          //               ),
          //               const SizedBox(
          //                 height: 8,
          //               ),
          //               Row(
          //                 children: [
          //                   const Icon(
          //                     Icons.calendar_month,
          //                     size: 12,
          //                     color: Colors.black45,
          //                   ),
          //                   const SizedBox(
          //                     width: 4,
          //                   ),
          //                   Text(
          //                     '26 September 2022',
          //                     style:
          //                         AppTextStyle.appTitlew400s8(Colors.black45),
          //                   )
          //                 ],
          //               ),
          //               Row(
          //                 children: [
          //                   const Icon(
          //                     Icons.location_on,
          //                     size: 12,
          //                     color: Colors.black45,
          //                   ),
          //                   const SizedBox(
          //                     width: 4,
          //                   ),
          //                   Text(
          //                     'Studio Sekolah',
          //                     style: AppTextStyle.appTitlew400s8(Colors.black),
          //                   )
          //                 ],
          //               )
          //             ],
          //           ),
          //         ),
          //       ],
          //     ),
          //     const SizedBox(
          //       height: 22,
          //     ),
          //     Row(
          //       children: [
          //         Container(
          //           decoration: BoxDecoration(
          //               color: const Color(0xff85B6FF),
          //               borderRadius: BorderRadius.circular(8.0)),
          //           margin: const EdgeInsets.only(left: 33),
          //           padding: const EdgeInsets.symmetric(
          //               vertical: 13, horizontal: 13),
          //           child: Column(
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: [
          //               Text(
          //                 'Seminar & \nKonfrensi',
          //                 style: AppTextStyle.appTitlew500s13h12(Colors.black),
          //               ),
          //               const SizedBox(
          //                 height: 2,
          //               ),
          //               Text(
          //                 'Seluruh kelas 7, 8 dan 9',
          //                 style: AppTextStyle.appTitlew400s7(Colors.black45),
          //               ),
          //               const SizedBox(
          //                 height: 12,
          //               ),
          //               Image.asset(
          //                 'assets/images/seminar.png',
          //                 width: 110,
          //               ),
          //               const SizedBox(
          //                 height: 8,
          //               ),
          //               Container(
          //                 margin: const EdgeInsets.only(left: 86),
          //                 child: Image.asset(
          //                   'assets/images/bunder.png',
          //                   width: 24,
          //                 ),
          //               ),
          //               const SizedBox(
          //                 height: 8,
          //               ),
          //               Row(
          //                 children: [
          //                   const Icon(
          //                     Icons.calendar_month,
          //                     size: 12,
          //                     color: Colors.black45,
          //                   ),
          //                   const SizedBox(
          //                     width: 4,
          //                   ),
          //                   Text(
          //                     '29 Agustus 2022',
          //                     style: AppTextStyle.appTitlew400s8(Colors.black),
          //                   )
          //                 ],
          //               ),
          //               Row(
          //                 children: [
          //                   const Icon(
          //                     Icons.location_on,
          //                     size: 12,
          //                     color: Colors.black45,
          //                   ),
          //                   const SizedBox(
          //                     width: 4,
          //                   ),
          //                   Text(
          //                     'Studio Sekolah',
          //                     style: AppTextStyle.appTitlew400s8(Colors.black),
          //                   )
          //                 ],
          //               )
          //             ],
          //           ),
          //         ),
          //         const Spacer(),
          //         Container(
          //           decoration: BoxDecoration(
          //               color: const Color(0xff93E396),
          //               borderRadius: BorderRadius.circular(8.0)),
          //           margin: const EdgeInsets.only(right: 33),
          //           padding: const EdgeInsets.symmetric(
          //               vertical: 13, horizontal: 13),
          //           child: Column(
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: [
          //               Text(
          //                 'Bazaar \nPakaian Adat',
          //                 style: AppTextStyle.appTitlew500s13h12(Colors.black),
          //               ),
          //               const SizedBox(
          //                 height: 2,
          //               ),
          //               Text('Seluruh kelas 7, 8 dan 9',
          //                   style: AppTextStyle.appTitlew400s7(Colors.black45)),
          //               const SizedBox(
          //                 height: 12,
          //               ),
          //               Image.asset(
          //                 'assets/images/bazaar.png',
          //                 width: 110,
          //               ),
          //               const SizedBox(
          //                 height: 8,
          //               ),
          //               Container(
          //                 margin: const EdgeInsets.only(left: 86),
          //                 child: Image.asset(
          //                   'assets/images/bunder.png',
          //                   width: 24,
          //                 ),
          //               ),
          //               const SizedBox(
          //                 height: 8,
          //               ),
          //               Row(
          //                 children: [
          //                   const Icon(
          //                     Icons.calendar_month,
          //                     size: 12,
          //                     color: Colors.black45,
          //                   ),
          //                   const SizedBox(
          //                     width: 4,
          //                   ),
          //                   Text(
          //                     '25 Agustus 2022',
          //                     style: AppTextStyle.appTitlew400s8(Colors.black),
          //                   )
          //                 ],
          //               ),
          //               Row(
          //                 children: [
          //                   const Icon(
          //                     Icons.location_on,
          //                     size: 12,
          //                     color: Colors.black45,
          //                   ),
          //                   const SizedBox(
          //                     width: 4,
          //                   ),
          //                   Text(
          //                     'Lapangan Sekolah',
          //                     style: AppTextStyle.appTitlew400s8(Colors.black),
          //                   )
          //                 ],
          //               )
          //             ],
          //           ),
          //         ),
          //       ],
          //     ),
          //     const SizedBox(
          //       height: 22,
          //     ),
          //     Row(
          //       children: [
          //         Container(
          //           decoration: BoxDecoration(
          //               color: const Color(0xffEDCC5D),
          //               borderRadius: BorderRadius.circular(8.0)),
          //           margin: const EdgeInsets.only(left: 33),
          //           padding: const EdgeInsets.symmetric(
          //               vertical: 13, horizontal: 13),
          //           child: Column(
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: [
          //               Text(
          //                 'Olahraga \nSenam Pagi',
          //                 style: AppTextStyle.appTitlew500s13h12(Colors.black),
          //               ),
          //               const SizedBox(
          //                 height: 2,
          //               ),
          //               Text(
          //                 'Seluruh kelas 7, 8 dan 9',
          //                 style: AppTextStyle.appTitlew400s7(Colors.black45),
          //               ),
          //               const SizedBox(
          //                 height: 12,
          //               ),
          //               Image.asset(
          //                 'assets/images/senam.png',
          //                 width: 110,
          //               ),
          //               const SizedBox(
          //                 height: 8,
          //               ),
          //               Container(
          //                 margin: const EdgeInsets.only(left: 86),
          //                 child: Image.asset(
          //                   'assets/images/bunder.png',
          //                   width: 24,
          //                 ),
          //               ),
          //               const SizedBox(
          //                 height: 8,
          //               ),
          //               Row(
          //                 children: [
          //                   const Icon(
          //                     Icons.calendar_month,
          //                     size: 12,
          //                     color: Colors.black45,
          //                   ),
          //                   const SizedBox(
          //                     width: 4,
          //                   ),
          //                   Text(
          //                     '18 Agustus 2022',
          //                     style: AppTextStyle.appTitlew400s8(Colors.black),
          //                   )
          //                 ],
          //               ),
          //               Row(
          //                 children: [
          //                   const Icon(
          //                     Icons.location_on,
          //                     size: 12,
          //                     color: Colors.black45,
          //                   ),
          //                   const SizedBox(
          //                     width: 4,
          //                   ),
          //                   Text(
          //                     'Halaman Sekolah',
          //                     style: AppTextStyle.appTitlew400s8(Colors.black),
          //                   )
          //                 ],
          //               )
          //             ],
          //           ),
          //         ),
          //         const Spacer(),
          //         Container(
          //           decoration: BoxDecoration(
          //               color: const Color(0xffFF9790),
          //               borderRadius: BorderRadius.circular(8.0)),
          //           margin: const EdgeInsets.only(right: 33),
          //           padding: const EdgeInsets.symmetric(
          //               vertical: 13, horizontal: 13),
          //           child: Column(
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: [
          //               Text(
          //                 'Lomba \nKemerdekaan',
          //                 style: AppTextStyle.appTitlew500s13h12(Colors.black),
          //               ),
          //               const SizedBox(
          //                 height: 2,
          //               ),
          //               Text(
          //                 'Seluruh kelas 7, 8 dan 9',
          //                 style: AppTextStyle.appTitlew400s7(Colors.black45),
          //               ),
          //               const SizedBox(
          //                 height: 12,
          //               ),
          //               Image.asset(
          //                 'assets/images/merdeka.png',
          //                 width: 110,
          //               ),
          //               const SizedBox(
          //                 height: 8,
          //               ),
          //               Container(
          //                 margin: const EdgeInsets.only(left: 86),
          //                 child: Image.asset(
          //                   'assets/images/bunder.png',
          //                   width: 24,
          //                 ),
          //               ),
          //               const SizedBox(
          //                 height: 8,
          //               ),
          //               Row(
          //                 children: [
          //                   const Icon(
          //                     Icons.calendar_month,
          //                     size: 12,
          //                     color: Colors.black45,
          //                   ),
          //                   const SizedBox(
          //                     width: 4,
          //                   ),
          //                   Text(
          //                     '17 Agustus 2022',
          //                     style: AppTextStyle.appTitlew400s8(Colors.black),
          //                   )
          //                 ],
          //               ),
          //               Row(
          //                 children: [
          //                   const Icon(
          //                     Icons.location_on,
          //                     size: 12,
          //                     color: Colors.black45,
          //                   ),
          //                   const SizedBox(
          //                     width: 4,
          //                   ),
          //                   Text(
          //                     'Halaman Sekolah',
          //                     style: AppTextStyle.appTitlew400s8(Colors.black),
          //                   )
          //                 ],
          //               )
          //             ],
          //           ),
          //         ),
          //       ],
          //     ),
          //     const SizedBox(
          //       height: 20,
          //     )
          //   ],
          // ),
        ],
      ),
    );
  }
}
