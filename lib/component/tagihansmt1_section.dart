// // ignore_for_file: prefer_const_constructors
//
// import 'package:aplikasi_si/component/tagihansmt1_card.dart';
// import 'package:aplikasi_si/pages/profile/spp/garisputus.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// import '../model/spp_model.dart';
//
// class TagihanSection extends StatefulWidget {
//   SppDatas sppDatas;
//   SppData sppData;
//   TagihanSection({super.key, required this.sppDatas, required this.sppData});
//
//   @override
//   State<TagihanSection> createState() => _TagihanSectionState();
// }
//
// class _TagihanSectionState extends State<TagihanSection> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView.builder(
//         itemCount: widget.sppData.spp.length,
//         itemBuilder: (BuildContext context, index){
//           return TagihanCard(
//               bulan: widget.sppDatas.tanggalTagihan.month.toString(),
//               jumlahtagihan: widget.sppData.tagihan!,
//               status: widget.sppDatas.status);
//         },
//       ),
//     );
//   }
// }
