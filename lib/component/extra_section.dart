import 'package:aplikasi_si/component/extra_card.dart';
import 'package:aplikasi_si/pages/dashboard/extrakurikuler/detail_extra_basket.dart';
import 'package:flutter/material.dart';

import '../theme/theme.dart';

class ExtraSection extends StatefulWidget {
  const ExtraSection({Key? key}) : super(key: key);

  @override
  State<ExtraSection> createState() => _ExtraSectionState();
}

class _ExtraSectionState extends State<ExtraSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 36),
          child: Text(
            'Extrakurikuler',
            style: AppTextStyle.appTitlew800s18(),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            margin: const EdgeInsets.only(left: 36),
            child: Row(
              children: [
                ExtraCard(
                    img: 'assets/images/basket.png',
                    name: 'Extrakurikuler Basket',
                    jadwal: 'Setiap Hari Senin 15:00 - 17:00'),
                ExtraCard(
                    img: 'assets/images/pramuka.png',
                    name: 'Extrakurikuler Pramuka',
                    jadwal: 'Setiap Hari Senin 14:00 - 16:00'),
                ExtraCard(
                    img: 'assets/images/voli.png',
                    name: 'Extrakurikuler Volly',
                    jadwal: 'Setiap Hari Senin 15:00 - 17:00'),
                ExtraCard(
                    img: 'assets/images/tari.png',
                    name: 'Extrakurikuler Tari',
                    jadwal: 'Setiap Hari Senin 14:00 - 15:00'),
                const SizedBox(
                  width: 26,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
