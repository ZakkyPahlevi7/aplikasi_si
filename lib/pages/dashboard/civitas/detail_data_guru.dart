import 'package:aplikasi_si/theme/app_colors.dart';
import 'package:aplikasi_si/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class DetailDataGuru extends StatefulWidget {
  const DetailDataGuru({Key? key}) : super(key: key);

  @override
  State<DetailDataGuru> createState() => _DetailDataGuruState();
}

class _DetailDataGuruState extends State<DetailDataGuru> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Guru'),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
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
                          'Isman RUsan Farhani, S.Pd',
                          style: AppTextStyle.appTitlew700s14()
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Guru Bahasa Indonesia',
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
                          'Dian Santri Prihatin, S.Pd',
                          style: AppTextStyle.appTitlew700s14(),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Guru Ipa',
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
                          'Susanto, M.Pd',
                          style: AppTextStyle.appTitlew700s14(),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Guru Matematika',
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
                          'Lutfi Akip Alfian, M.Pd',
                          style: AppTextStyle.appTitlew700s14(),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Guru Ips',
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
                          'M.Syukri Ghozali, S.Pd.I',
                          style: AppTextStyle.appTitlew700s14(),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Guru Pai',
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
                          'Indah Nurfaedah, S.Pd',
                          style: AppTextStyle.appTitlew700s14(),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Guru Matematika',
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
                          'Lina Herlina, S.Pd',
                          style: AppTextStyle.appTitlew700s14(),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Guru PPKN',
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
                          'Faiz Daroin, S.Pd',
                          style: AppTextStyle.appTitlew700s14(),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Guru Bahasa Inggris',
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
                          'Muharar, S.Ag',
                          style: AppTextStyle.appTitlew700s14(),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Guru Bahasa Arab',
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
                          'Dede Yusuf Maulana, S.Ag',
                          style: AppTextStyle.appTitlew700s14(),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Guru Al-Quran',
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
                          'Rosi Indah Santri, ST',
                          style: AppTextStyle.appTitlew700s14(),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Guru Al-Quran',
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
                          "Muhammad Irfa Rifa'i",
                          style: AppTextStyle.appTitlew700s14(),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Guru Al-Quran',
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
                          'Abdul Hamid, S.Pd',
                          style: AppTextStyle.appTitlew700s14(),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Guru Al-quran',
                          style: AppTextStyle.appTitlew400s12h13(),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 14,
              )
            ],
          ),
        ],
      ),
    );
  }
}
