import 'package:aplikasi_si/controller/event_controller.dart';
import 'package:aplikasi_si/controller/kepala_controller.dart';
import 'package:aplikasi_si/theme/app_colors.dart';
import 'package:aplikasi_si/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailKepalaSekolah extends StatefulWidget {
  const DetailKepalaSekolah({Key? key}) : super(key: key);

  @override
  State<DetailKepalaSekolah> createState() => _DetailKepalaSekolahState();
}

class _DetailKepalaSekolahState extends State<DetailKepalaSekolah> {
  final KepalaController _kepalaController = Get.put(KepalaController());
  @override
  void initState() {
    // TODO: implement initState
    _initData();
    print(_kepalaController.kepala.length);
    super.initState();
  }

  Future onRefresh() async {
    await _initData();
  }

  Future<Null> _initData() async {
    await _kepalaController.loadData(
      withLoading:true
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.contactUsIconColor,
        title: const Text('Kepala Sekolah'),
      ),
      backgroundColor: Colors.white,
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: Obx(() => _kepalaController.isLoading.value ? Center(child: CircularProgressIndicator()) :
          ListView.builder(
            itemCount: _kepalaController.kepala.length,
            itemBuilder: (BuildContext context, index){
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 2.5,
                        spreadRadius: 0.9,
                        color: Colors.black.withOpacity(0.1))
                  ],
                ),
                margin: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: AppColors.secondaryWhite),
                      padding: const EdgeInsets.all(10),
                      child: Image.asset(
                        'assets/images/profilcivitas.png',
                        width: 50,
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _kepalaController.kepala[index].nama!,
                          style: AppTextStyle.appTitlew700s14(),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          _kepalaController.kepala[index].jabatan!,
                          style: AppTextStyle.appTitlew400s12h13(),
                        )
                      ],
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
