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
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 36),
            child: Row(
              children: [
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
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
                  itemCount: _prestasiController.prestasi.length,
                  itemBuilder: (BuildContext context, index){
                    return CardPrestasi(img: 'assets/images/medali1.png', juara: 'Juara ${_prestasiController.prestasi[index].juaraId}${_prestasiController.prestasi[index].tingkat!}');
                  },
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  scrollDirection: Axis.horizontal,
                ),
          ),
    ]
            ),
          );
  }
}
