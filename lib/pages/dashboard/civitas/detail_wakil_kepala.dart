import 'package:flutter/material.dart';
import 'package:aplikasi_si/theme/theme.dart';

class DetailWakilKepala extends StatefulWidget {
  const DetailWakilKepala({Key? key}) : super(key: key);

  @override
  State<DetailWakilKepala> createState() => _DetailWakilKepalaState();
}

class _DetailWakilKepalaState extends State<DetailWakilKepala> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wakil Kepala'),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 17,
          ),
          Container(
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
            margin: const EdgeInsets.symmetric(horizontal: 22),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: AppColors.secondaryWhite),
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    'assets/images/profilcivitas.png',
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
                      'Tri Puji Rahayu, SP',
                      style: AppTextStyle.appTitlew700s14(),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Wakil Kepala Bagian Kurikulum',
                      style: AppTextStyle.appTitlew400s12h13(),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Container(
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
            margin: const EdgeInsets.symmetric(horizontal: 22),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: AppColors.secondaryWhite),
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    'assets/images/profilcivitas.png',
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
                      'Dikdik Cunadi, S.Ud',
                      style: AppTextStyle.appTitlew700s14(),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Wakil Kepala Bagian Kesiswaan',
                      style: AppTextStyle.appTitlew400s12h13(),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
