import 'package:aplikasi_si/controller/siswa_7a_controller.dart';
import 'package:aplikasi_si/controller/siswa_7b_controller.dart';
import 'package:aplikasi_si/controller/siswa_8a_controller.dart';
import 'package:aplikasi_si/controller/siswa_8b_controller.dart';
import 'package:aplikasi_si/controller/siswa_9a_controller.dart';
import 'package:aplikasi_si/controller/siswa_9b_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../theme/app_colors.dart';
import '../../../theme/app_text_styles.dart';

class Detail9B extends StatefulWidget {
  const Detail9B({Key? key}) : super(key: key);

  @override
  State<Detail9B> createState() => _Detail9BState();
}

class _Detail9BState extends State<Detail9B> {
  final Siswa9BController _siswa9bController = Siswa9BController();

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
    await _siswa9bController.loadData(withLoading: true);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.contactUsIconColor,
        title: const Text('Kelas 9B'),
      ),
      backgroundColor: Colors.white,
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: Obx(() => _siswa9bController.isLoading.value ? Center(child: CircularProgressIndicator()) :
        ListView.builder(
          itemCount: _siswa9bController.siswa_9b.length,
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
                      _siswa9bController.siswa_9b[index].link,
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
                        _siswa9bController.siswa_9b[index].nama!,
                        style: AppTextStyle.appTitlew700s14(),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        _siswa9bController.siswa_9b[index].kelas!,
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
