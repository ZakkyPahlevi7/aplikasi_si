// ignore_for_file: prefer_const_constructors

import 'package:aplikasi_si/controller/prestasi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pages/page.dart';
import '../theme/theme.dart';

class PrestasiSection extends StatefulWidget {
  const PrestasiSection({Key? key}) : super(key: key);

  @override
  State<PrestasiSection> createState() => _PrestasiSectionState();
}

class _PrestasiSectionState extends State<PrestasiSection> {
  final PrestasiController _prestasiController = PrestasiController();

  @override
  void initState() {
    _initData();
    // TODO: implement initState
    super.initState();
  }

  Future<Null> _initData() async {
    await _prestasiController.loadData(withLoading: true);
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 36),
        child: Row(
          children: [
            Icon(
              Icons.workspace_premium,
              color: Color(0xff0962E0),
            ),
            SizedBox(
              width: 6,
            ),
            Text('Prestasi', style: AppTextStyle.appTitlew800s18()),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ListPrestasiPage()));
              },
              child: Text('Lihat Semua',
                  style: AppTextStyle.appTitlew400s13(Colors.black)),
            )
          ],
        ),
      ),
      SizedBox(
        height: 12,
      ),
      Obx(
        () => _prestasiController.isLoading.value
            ? CircularProgressIndicator()
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 33.0),
                child: SizedBox(
                  height: 100,
                  child: ListView.builder(
                    // physics: NeverScrollableScrollPhysics(),
                    // clipBehavior: Clip.hardEdge,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, index) {
                      print(_prestasiController.prestasi[index].juara.link
                          .replaceAll(' ', ''));
                      return Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: CardPrestasi(
                            img: _prestasiController.prestasi[index].juara.link,
                            juara:
                                _prestasiController.prestasi[index].juara.juara,
                            tingkat:
                                _prestasiController.prestasi[index].tingkat,
                            kategori:
                                _prestasiController.prestasi[index].lomba),
                      );
                    },
                  ),
                ),
              ),
      )
      // SingleChildScrollView(
      //   padding: const EdgeInsets.symmetric(vertical: 4),
      //   scrollDirection: Axis.horizontal,
      //   child: Container(
      //     margin: const EdgeInsets.only(left: 36),
      //     child: Row(
      //       children: [
      //         CardPrestasi(
      //             img: 'assets/images/medali1.png',
      //             juara: 'Juara 1 Nasional',
      //             nama: 'Maulana Zakky Pahlevi',
      //             kategori: 'Juara 1 Lomba Gonta-Ganti Hp'),
      //         CardPrestasi(
      //             img: 'assets/images/medali2.png',
      //             juara: 'Juara 2 Nasional',
      //             nama: 'Maulana Zakky Pahlevi',
      //             kategori: 'Juara 2 Lomba Anak Tidak Rajin'),
      //         CardPrestasi(
      //             img: 'assets/images/medali1.png',
      //             juara: 'Juara 1 Nasional',
      //             nama: 'Maulana Zakky Pahlevi',
      //             kategori: 'Juara 1 Lomba Mengapel'),
      //         CardPrestasi(
      //             img: 'assets/images/medali2.png',
      //             juara: 'Juara 2 Nasional',
      //             nama: 'Maulana Zakky Pahlevi',
      //             kategori: 'Juara 2 Lomba Anak Kuat'),
      //         SizedBox(
      //           width: 26,
      //         )
      //       ],
      //     ),
      //     //         Container(
      //     //           padding: EdgeInsets.only(left: 30),
      //     //           child: SingleChildScrollView(
      //     //             scrollDirection: Axis.horizontal,
      //     //               child: Row(
      //     //                 children: [
      //     //                 CardPrestasi(img: 'assets/images/medali1.png', juara: 'Juara ${_prestasiController.prestasi[0].juaraId} ${_prestasiController.prestasi[0].tingkat!}', kategori: 'Lomba Panahan', nama: 'Salma Muntaz Shaumi' ),
      //     //                 // CardPrestasi(img: 'assets/images/medali1.png', juara: 'Juara ${_prestasiController.prestasi[1].juaraId} ${_prestasiController.prestasi[1].tingkat!}', kategori: 'Lomba Panahan', nama: 'Salma Muntaz Shaumi' ),
      //     // ],),
      //     //           ),
      //     //         ),
      //     //       SingleChildScrollView(
      //     //         scrollDirection: Axis.horizontal,
      //     //         child: Row(
      //     // children: [
      //     //   CardPrestasi(img: 'assets/images/medali1.png', juara: 'Juara ${_prestasiController.prestasi[0].juaraId}${_prestasiController.prestasi[0].tingkat!}', kategori: 'Lomba Panahan', nama: 'Salma Muntaz Shaumi' ),
      //     //   CardPrestasi(img: 'assets/images/medali1.png', juara: 'Juara ${_prestasiController.prestasi[1].juaraId}${_prestasiController.prestasi[1].tingkat!}', kategori: 'Lomba Panahan', nama: 'Salma Muntaz Shaumi' ),
      //     //   // CardPrestasi(img: 'assets/images/medali1.png', juara: 'Juara ${_prestasiController.prestasi[2].juaraId}${_prestasiController.prestasi[2].tingkat!}', kategori: 'Lomba Panahan', nama: 'Salma Muntaz Shaumi' ),
      //     // ],
      //     // ),
      //     //       ),
      //   ),
      // )
    ]);
  }
}
