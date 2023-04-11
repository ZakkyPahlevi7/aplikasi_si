import 'package:aplikasi_si/controller/event_controller.dart';
import 'package:aplikasi_si/pages/event/detail_eventcs.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:intl/intl.dart';

import '../theme/app_text_styles.dart';
import 'highlight_event_card.dart';

class EventSection extends StatefulWidget {
  const EventSection({Key? key}) : super(key: key);

  @override
  State<EventSection> createState() => _EventSectionState();
}

class _EventSectionState extends State<EventSection> {
  final EventController eventController = EventController();


  @override
  void initState() {
    _initData();
    // TODO: implement initState
    super.initState();
  }

  Future<Null> _initData() async {
    await eventController.loadDataComingSoon(withLoading: true);
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
              const Icon(
                Icons.celebration_outlined,
                color: Color(0xff0962E0),
              ),
              SizedBox(
                width: 6,
              ),
              Text(
                'Event',
                style: AppTextStyle.appTitlew800s18(),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Obx(
              () => eventController.isLoading.value
              ? const Center(child: CircularProgressIndicator())
              : Container(
            margin: const EdgeInsets.symmetric(horizontal: 33),
            height: 150,
            child: ListView.builder(
              // physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              // clipBehavior: Clip.hardEdge,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return HighlightEventCard(
                img: eventController.eventComingSoon[index].link,
                    name: eventController.eventComingSoon[index].event,
                    jadwal: DateFormat.yMMMd().format(eventController.eventComingSoon[index].tanggal),
                    pageRouteE: DetailEventCsPage(
                    eventComingSoonData:
                    eventController.eventComingSoon[index]),
                );
              },
              itemCount: eventController.eventComingSoon.length,
            ),
          ),
        )
      ],
    );
  }
}
