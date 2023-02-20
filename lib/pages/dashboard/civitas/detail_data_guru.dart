import 'package:aplikasi_si/controller/guru_controller.dart';
import 'package:aplikasi_si/theme/app_colors.dart';
import 'package:aplikasi_si/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailDataGuru extends StatefulWidget {
  const DetailDataGuru({Key? key}) : super(key: key);

  @override
  State<DetailDataGuru> createState() => _DetailDataGuruState();
}

class _DetailDataGuruState extends State<DetailDataGuru> {
  final GuruController _guruController = GuruController();

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
    await _guruController.loadData(withLoading: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.contactUsIconColor,
        title: const Text('Data Guru'),
      ),
      backgroundColor: Colors.white,
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: Obx(() => _guruController.isLoading.value ? Center(child: CircularProgressIndicator()) :
          ListView.builder(
            itemCount: _guruController.guru.length,
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
                          _guruController.guru[index].nama!,
                          style: AppTextStyle.appTitlew700s14(),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          _guruController.guru[index].pengampu!,
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
