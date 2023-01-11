import 'package:flutter/material.dart';

import '../pages/page.dart';
import '../theme/theme.dart';

class PrestasiSection extends StatelessWidget {
  const PrestasiSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 36),
          child: Row(
            children: [
              Text('Prestasi', style: AppTextStyle.appTitlew800s18()),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                          const ListPrestasiPage()));
                },
                child: Text('Lihat Semua',
                    style: AppTextStyle.appTitlew400s13(Colors.black)),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 4),
          scrollDirection: Axis.horizontal,
          child: Container(
            margin: const EdgeInsets.only(left: 36),
            child: Row(
              children: [
                CardPrestasi(img: 'assets/images/medali1.png', juara: 'Juara 1 Nasional', nama: 'Maulana Zakky Pahlevi', kategori: 'Juara 1 Lomba Gonta-Ganti Hp'),
                CardPrestasi(img: 'assets/images/medali2.png' , juara: 'Juara 2 Nasional', nama: 'Maulana Zakky Pahlevi', kategori: 'Juara 2 Lomba Anak Tidak Rajin'),
                CardPrestasi(img: 'assets/images/medali1.png', juara: 'Juara 1 Nasional', nama: 'Maulana Zakky Pahlevi', kategori: 'Juara 1 Lomba Mengapel'),
                CardPrestasi(img: 'assets/images/medali2.png', juara: 'Juara 2 Nasional', nama: 'Maulana Zakky Pahlevi', kategori: 'Juara 2 Lomba Anak Kuat'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
