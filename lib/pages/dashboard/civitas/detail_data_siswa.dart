import 'package:aplikasi_si/controller/osis_controller.dart';
import 'package:aplikasi_si/pages/dashboard/civitas/detail_7a.dart';
import 'package:aplikasi_si/pages/dashboard/civitas/detail_7b.dart';
import 'package:aplikasi_si/pages/dashboard/civitas/detail_8a.dart';
import 'package:aplikasi_si/pages/dashboard/civitas/detail_8b.dart';
import 'package:aplikasi_si/pages/dashboard/civitas/detail_9a.dart';
import 'package:aplikasi_si/pages/dashboard/civitas/detail_9b.dart';
import 'package:aplikasi_si/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../theme/app_text_styles.dart';

class DetailOsis extends StatefulWidget {
  const DetailOsis({Key? key}) : super(key: key);

  @override
  State<DetailOsis> createState() => _DetailOsisState();
}

class _DetailOsisState extends State<DetailOsis> {
  final OsisController osisController = OsisController();

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
    await osisController.loadData(withLoading: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data OSIS'),
        backgroundColor: AppColors.contactUsIconColor,
      ),
      backgroundColor: Colors.white,
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: Obx(() => osisController.isLoading.value ? const Center(child: CircularProgressIndicator()) :
        ListView.builder(
          itemCount: osisController.osis.length,
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
                      osisController.osis[index].link!,
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
                        osisController.osis[index].nama!,
                        style: AppTextStyle.appTitlew700s14(),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        osisController.osis[index].jabatan!,
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
