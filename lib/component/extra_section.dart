// ignore_for_file: prefer_const_constructors

import 'package:aplikasi_si/bottom_navbar.dart';
import 'package:aplikasi_si/component/extra_card.dart';
import 'package:aplikasi_si/controller/extrakurikuler_controller.dart';
import 'package:aplikasi_si/pages/dashboard/extrakurikuler/detail_extra_volly.dart';
import 'package:aplikasi_si/pages/dashboard/extrakurikuler/detail_extra_basket.dart';
import 'package:aplikasi_si/pages/dashboard/extrakurikuler/detail_extra_futsal.dart';
import 'package:aplikasi_si/pages/dashboard/extrakurikuler/detail_extra_tari.dart';
import 'package:aplikasi_si/pages/dashboard/extrakurikuler/detail_extra_pramuka.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../theme/theme.dart';

class ExtraSection extends StatefulWidget {
  const ExtraSection({Key? key}) : super(key: key);

  @override
  State<ExtraSection> createState() => _ExtraSectionState();
}

class _ExtraSectionState extends State<ExtraSection> {
  final ExtrakurikulerController _extraController = ExtrakurikulerController();

  @override
  void initState() {
    _initData();
    // TODO: implement initState
    super.initState();
  }

  Future<Null> _initData() async {
    await _extraController.loadData(withLoading: true);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 36),
          child: Row(
            children: [
              Icon(
                Icons.sports_basketball,
                color: Color(0xff0962E0),
              ),
              SizedBox(
                width: 6,
              ),
              Text(
                'Extrakurikuler',
                style: AppTextStyle.appTitlew800s18(),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Obx(() => _extraController.isLoading.value ? Center(child: CircularProgressIndicator()) :
          Container(
            width: MediaQuery.of(context).size.width ,
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              clipBehavior: Clip.hardEdge,
              // scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return ExtraCard(
                    img: _extraController.extrakurikuler[index].link,
                    name: _extraController.extrakurikuler[index].judul,
                    jadwal: _extraController.extrakurikuler[index].jadwal,
                    pageRouteE: DetailExtra(id: _extraController.extrakurikuler[index].id)
                );
              },
              itemCount: _extraController.extrakurikuler.length,
            ),
          ),
        )
      ],
    );
  }
}
