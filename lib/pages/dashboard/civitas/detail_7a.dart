import 'package:aplikasi_si/controller/siswa_7a_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../theme/app_colors.dart';
import '../../../theme/app_text_styles.dart';

class Detail7A extends StatefulWidget {
  const Detail7A({Key? key}) : super(key: key);

  @override
  State<Detail7A> createState() => _Detail7AState();
}

class _Detail7AState extends State<Detail7A> {
  final Siswa7AController _siswa7aController = Siswa7AController();

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
    await _siswa7aController.loadData(withLoading: true);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.contactUsIconColor,
        title: const Text('Kelas 7A'),
      ),
      backgroundColor: Colors.white,
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: Obx(() => _siswa7aController.isLoading.value ? const Center(child: CircularProgressIndicator()) :
        ListView.builder(
          itemCount: _siswa7aController.siswa_7a.length,
          itemBuilder: (BuildContext context, index){
            print('ini foto : ' + _siswa7aController.siswa_7a[index].link.replaceAll(' ', ''));
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
                      _siswa7aController.siswa_7a[index].link,
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
                        _siswa7aController.siswa_7a[index].nama!,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyle.appTitlew500s12(Colors.black),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        _siswa7aController.siswa_7a[index].kelas!,
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
