// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:aplikasi_si/controller/event_controller.dart';
import 'package:aplikasi_si/pages/event/detail_eventcs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../theme/app_text_styles.dart';
import 'eventcs_card.dart';

class EventcsSection extends StatefulWidget {
  const EventcsSection({super.key});

  @override
  State<EventcsSection> createState() => _EventcsSectionState();
}

class _EventcsSectionState extends State<EventcsSection> {
  final EventController _eventController = EventController();

  @override
  void initState() {
    _initData();
    // TODO: implement initState
    super.initState();
  }

  Future<Null> _initData() async {
    await _eventController.loadDataComingSoon(withLoading: true);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: const EdgeInsets.only(top: 12, left: 28, bottom: 20),
            child: Text(
              'Event yang akan datang',
              style: AppTextStyle.appTitlew800s20(Colors.black),
            )),
        Obx(() => _eventController.isLoading.value ? Center(child: CircularProgressIndicator()) :
          SizedBox(
            height: 310,
            child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 22.0),
                physics: PageScrollPhysics(),
              shrinkWrap: true,
              clipBehavior: Clip.hardEdge,
              scrollDirection: Axis.horizontal,
              itemCount: _eventController.eventComingSoon.length,
                separatorBuilder: (_, __) {
                  return SizedBox(width: 10,);
                },
                itemBuilder: (BuildContext context, index){
                print(_eventController.eventComingSoon.length);
                  return EventcsCard(
                    title: _eventController.eventComingSoon[index].event,
                    peserta: _eventController.eventComingSoon[index].peserta,
                    img: _eventController.eventComingSoon[index].link,
                    day: _eventController.eventComingSoon[index].tanggal.toString(),
                    location: _eventController.eventComingSoon[index].lokasi,
                    pageRouteE: DetailEventCsPage(eventComingSoonData: _eventController.eventComingSoon[index]),
                  );
                }
            ),
          ),
        )
      ],
    );
  }
}
