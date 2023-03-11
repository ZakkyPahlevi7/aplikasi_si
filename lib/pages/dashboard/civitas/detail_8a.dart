import 'package:aplikasi_si/controller/siswa_7a_controller.dart';
import 'package:aplikasi_si/controller/siswa_7b_controller.dart';
import 'package:aplikasi_si/controller/siswa_8a_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../theme/app_colors.dart';
import '../../../theme/app_text_styles.dart';

class Detail8A extends StatefulWidget {
  const Detail8A({Key? key}) : super(key: key);

  @override
  State<Detail8A> createState() => _Detail8AState();
}

class _Detail8AState extends State<Detail8A> {
  final Siswa8AController _siswa8aController = Siswa8AController();

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
    await _siswa8aController.loadData(withLoading: true);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.contactUsIconColor,
        title: const Text('Kelas 8A'),
      ),
      backgroundColor: Colors.white,
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: Obx(() => _siswa8aController.isLoading.value ? Center(child: CircularProgressIndicator()) :
        ListView.builder(
          itemCount: _siswa8aController.siswa_8a.length,
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
                    child: Image.network(
                      _siswa8aController.siswa_8a[index].link,
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
                        _siswa8aController.siswa_8a[index].nama!,
                        style: AppTextStyle.appTitlew700s14(),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        _siswa8aController.siswa_8a[index].kelas!,
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
    );  }
}
