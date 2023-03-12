// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:aplikasi_si/component/component.dart';
import 'package:aplikasi_si/pages/event/detail_eventcs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/event_controller.dart';
import '../pages/event/detail_eventex.dart';
import '../theme/app_text_styles.dart';
import 'eventex_card.dart';

class EventexSection extends StatefulWidget {
  const EventexSection({super.key});

  @override
  State<EventexSection> createState() => _EventexSectionState();
}

class _EventexSectionState extends State<EventexSection> {
  final _controller = Get.put(EventController());

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
    await _controller.loadDataRecent(withLoading: true);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 26, left: 28, bottom: 20, right: 28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              child: Text(
                'Event yang telah berlalu',
                style: AppTextStyle.appTitlew800s20(Colors.black),
              )),
          SizedBox(height: 20,),
          Obx(() => _controller.isLoadingRecent.value ? Center(child: CircularProgressIndicator()) :
            GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              childAspectRatio: 0.7,
              crossAxisCount: 2,
              clipBehavior: Clip.hardEdge,
              children: List.generate(
                  _controller.eventRecent.length,
                      (index) {
                    return EventexCard(
                        title: _controller.eventRecent[index].event,
                        peserta: _controller.eventRecent[index].peserta,
                        imgex: _controller.eventRecent[index].link,
                        day: _controller.eventRecent[index].tanggal.toString(),
                        location: _controller.eventRecent[index].lokasi,
                        pageRouteE: DetailEventExPage(eventRecentData: _controller.eventRecent[index]));
                  }),
            ),
          )
        ],
      ),
    );
  }
}
