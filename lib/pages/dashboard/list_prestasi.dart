// ignore_for_file: avoid_unnecessary_containers, unused_import, prefer_const_constructors

import 'package:aplikasi_si/component/card_prestasi.dart';
import 'package:aplikasi_si/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_si/bottom_navbar.dart';
import 'package:get/get.dart';

import '../../controller/prestasi_controller.dart';
import '../../theme/app_colors.dart';

class ListPrestasiPage extends StatefulWidget {
  const ListPrestasiPage({Key? key}) : super(key: key);

  @override
  State<ListPrestasiPage> createState() => _ListPrestasiPageState();
}

class _ListPrestasiPageState extends State<ListPrestasiPage> {
  final PrestasiController _prestasiController = PrestasiController();

  @override
  void initState() {
    _initData();
    // TODO: implement initState
    super.initState();
  }

  Future onRefresh() async {
    await _initData();
  }

  Future<Null> _initData() async {
    await _prestasiController.loadData(withLoading: true);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.contactUsIconColor,
        title: const Text('Prestasi'),
      ),
      backgroundColor: Colors.white,
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: Obx(() => _prestasiController.isLoading.value ? Center(child: CircularProgressIndicator()) :
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: ListView.builder(
              itemCount: _prestasiController.prestasi.length,
                itemBuilder: (BuildContext context, index){
                return CardPrestasi(
                    img: _prestasiController.prestasi[index].juara.link,
                    juara: _prestasiController.prestasi[index].juara.juara,
                    tingkat: _prestasiController.prestasi[index].tingkat,
                    kategori: _prestasiController.prestasi[index].lomba);
                }),
          ),
        ),
        ),
      );
  }
}
