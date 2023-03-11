// ignore_for_file: prefer_const_literals_to_create_immutables, unused_import, prefer_const_constructors

import 'package:aplikasi_si/component/component.dart';
import 'package:flutter/material.dart';

import '../../controller/event_controller.dart';
import '../../theme/app_text_styles.dart';

class EventPage extends StatefulWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  final EventController _eventController = EventController();

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
    await _eventController.loadData(withLoading: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: RefreshIndicator(
            onRefresh: onRefresh,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const EventcsSection(),
                  const EventexSection(),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
