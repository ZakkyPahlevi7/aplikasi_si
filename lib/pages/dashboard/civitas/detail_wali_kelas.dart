import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:aplikasi_si/theme/theme.dart';

class DetailWaliKelas extends StatefulWidget {
  const DetailWaliKelas({Key? key}) : super(key: key);

  @override
  State<DetailWaliKelas> createState() => _DetailWaliKelasState();
}

class _DetailWaliKelasState extends State<DetailWaliKelas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wali Kelas'),
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
                          'Susanto, M.Pd',
                          style: AppTextStyle.appTitlew700s14(),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          'VII-A',
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
                          'VII-B',
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
                          'VIII-A',
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
                          'VIII-B',
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
                          'IX-A',
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
                          'Isma Rusan Farhani, S.Pd',
                          style: AppTextStyle.appTitlew700s14(),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          'IX-B',
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
