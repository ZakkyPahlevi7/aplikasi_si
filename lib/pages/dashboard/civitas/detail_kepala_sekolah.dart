import 'package:aplikasi_si/theme/app_colors.dart';
import 'package:aplikasi_si/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class DetailKepalaSekolah extends StatefulWidget {
  const DetailKepalaSekolah({Key? key}) : super(key: key);

  @override
  State<DetailKepalaSekolah> createState() => _DetailKepalaSekolahState();
}

class _DetailKepalaSekolahState extends State<DetailKepalaSekolah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kepala Sekolah'),
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
                      'Kepala Madrasah \nPeriode 2014 s/d 2018',
                      style: AppTextStyle.appTitlew400s12h13(),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 14,),
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
                      'Shillakhudin M.Pd',
                      style: AppTextStyle.appTitlew700s14(),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Kepala Madrasah \nPeriode 2019 s/d sekarang',
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
