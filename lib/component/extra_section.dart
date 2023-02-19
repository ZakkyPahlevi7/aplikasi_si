import 'package:aplikasi_si/bottom_navbar.dart';
import 'package:aplikasi_si/component/extra_card.dart';
import 'package:aplikasi_si/pages/dashboard/extrakurikuler/detail_extra_badminton.dart';
import 'package:aplikasi_si/pages/dashboard/extrakurikuler/detail_extra_basket.dart';
import 'package:aplikasi_si/pages/dashboard/extrakurikuler/detail_extra_futsal.dart';
import 'package:aplikasi_si/pages/dashboard/extrakurikuler/detail_extra_naghdam.dart';
import 'package:aplikasi_si/pages/dashboard/extrakurikuler/detail_extra_paskibra.dart';
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
        // ListView.builder(
        //   clipBehavior: Clip.hardEdge,
        //   scrollDirection: Axis.horizontal,
        //   itemBuilder: (BuildContext context, int index) {
        //     return ExtraCard(
        //       img: index == 0
        //           ? 'assets/images/basket.png'
        //           : index == 1
        //               ? 'assets/images/pramuka.png'
        //               : index == 2
        //                   ? 'assets/images/voli.png'
        //                   : index == 3
        //                       ? 'assets/images/tari.png'
        //                       : index == 4
        //                           ? 'assets/images/tari.png'
        //                           : 'assets/images/tari.png',
        //       name: index == 0
        //           ? 'Kepala Sekolah'
        //           : index == 1
        //               ? 'Wakil Kepala'
        //               : index == 2
        //                   ? 'Data Guru'
        //                   : index == 3
        //                       ? 'Wali Kelas'
        //                       : index == 4
        //                           ? 'Data Staff'
        //                           : 'Data Siswa',
        //       jadwal: index == 0
        //           ? 'Kepala Sekolah'
        //           : index == 1
        //               ? 'Wakil Kepala'
        //               : index == 2
        //                   ? 'Data Guru'
        //                   : index == 3
        //                       ? 'Wali Kelas'
        //                       : index == 4
        //                           ? 'Data Staff'
        //                           : 'Data Siswa',
        // pageRouteE: index == 0
        //     ? const DetailExtraBadminton()
        //     : index == 1
        //         ? const DetailExtraBasket()
        //         : index == 2
        //             ? const DetailExtraFutsal()
        //             : index == 3
        //                 ? const DetailExtraNaghdam()
        //                 : index == 4
        //                     ? const DetailExtraPaskibra()
        //                     : const BottomNavbar()
        //     );
        //   },
        //   itemCount: 5,
        // )
        // List.generate(5, (index) {
        //   return ExtraCard(img: index == 0, name: index == 0, jadwal: index == 0, pageRouteE: index == 0);
        // })
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            margin: const EdgeInsets.only(left: 36),
            child: Row(
              children: [
                ExtraCard(
                  img: 'assets/images/basket.png',
                  name: 'Extrakurikuler Basket',
                  jadwal: 'Setiap Hari Senin 15:00 - 17:00',
                  pageRouteE: const DetailExtraFutsal(),
                ),
                ExtraCard(
                  img: 'assets/images/pramuka.png',
                  name: 'Extrakurikuler Pramuka',
                  jadwal: 'Setiap Hari Senin 14:00 - 16:00',
                  pageRouteE: const DetailExtraPaskibra(),
                ),
                ExtraCard(
                  img: 'assets/images/voli.png',
                  name: 'Extrakurikuler Volly',
                  jadwal: 'Setiap Hari Senin 15:00 - 17:00',
                  pageRouteE: const DetailExtraBadminton(),
                ),
                ExtraCard(
                  img: 'assets/images/tari.png',
                  name: 'Extrakurikuler Tari',
                  jadwal: 'Setiap Hari Senin 14:00 - 15:00',
                  pageRouteE: const DetailExtraNaghdam(),
                ),
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
