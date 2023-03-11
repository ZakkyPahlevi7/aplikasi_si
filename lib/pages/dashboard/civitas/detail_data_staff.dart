import 'package:aplikasi_si/controller/karyawan_controller.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_si/theme/theme.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class DetaiDataStaff extends StatefulWidget {
  const DetaiDataStaff({Key? key}) : super(key: key);

  @override
  State<DetaiDataStaff> createState() => _DetaiDataStaffState();
}

class _DetaiDataStaffState extends State<DetaiDataStaff> {
  final KaryawanController _karyawanController = KaryawanController();

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
    await _karyawanController.loadData(withLoading: true);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Staff'),
        backgroundColor: AppColors.contactUsIconColor,
      ),
      backgroundColor: Colors.white,
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: Obx(() => _karyawanController.isLoading.value ? Center(child: CircularProgressIndicator()) :
        ListView.builder(
          itemCount: _karyawanController.staff.length,
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
                      _karyawanController.staff[index].link,
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
                        _karyawanController.staff[index].nama!,
                        style: AppTextStyle.appTitlew700s14(),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        _karyawanController.staff[index].jabatan!,
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
