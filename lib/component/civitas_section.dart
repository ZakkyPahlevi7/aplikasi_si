// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../pages/page.dart';
import '../theme/theme.dart';

class CivitasSection extends StatelessWidget {
  const CivitasSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 36, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.diversity_3,
                color: Color(0xff0962E0),
              ),
              SizedBox(
                width: 6,
              ),
              Text('Civitas', style: AppTextStyle.appTitlew800s18()),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          GridView.count(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            crossAxisCount: 2,
            childAspectRatio: 2.7,
            clipBehavior: Clip.hardEdge,
            children: List.generate(
              6,
              (index) {
                return CivitasCard(
                    img: index == 0
                        ? 'assets/images/profilks.png'
                        : index == 1
                            ? 'assets/images/profilwk.png'
                            : index == 2
                                ? 'assets/images/profildg.png'
                                : index == 3
                                    ? 'assets/images/profilkw.png'
                                    : index == 4
                                        ? 'assets/images/profilds.png'
                                        : 'assets/images/profilwk.png',
                    text: index == 0
                        ? 'Kepala Sekolah'
                        : index == 1
                            ? 'Wakil Kepala'
                            : index == 2
                                ? 'Data Guru'
                                : index == 3
                                    ? 'Wali Kelas'
                                    : index == 4
                                        ? 'Data Staff'
                                        : 'Data Siswa',
                    pageRoute: index == 0
                        ? const DetailKepalaSekolah()
                        : index == 1
                            ? const DetailWakilKepala()
                            : index == 2
                                ? const DetailDataGuru()
                                : index == 3
                                    ? const DetailWaliKelas()
                                    : index == 4
                                        ? const DetaiDataStaff()
                                        : const DetailDataSiswa());
              },
            ),
          )
        ],
      ),
    );
  }
}
