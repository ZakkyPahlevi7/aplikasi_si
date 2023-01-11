import '../../main.dart';
import 'package:flutter/material.dart';
import '../page.dart';
import 'package:aplikasi_si/theme/theme.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DashboardHeader(),
              const SizedBox(
                height: 5,
              ),
              CarouselWithDotsPage(imgList: imgList),
              const VisiMisiCard(),
              const SizedBox(
                height: 5,
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 36, vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Civitas',
                        style: AppTextStyle.appTitlew400s18(Colors.black)),
                    const SizedBox(
                      height: 12,
                    ),
                    GridView.count(
                      physics: NeverScrollableScrollPhysics(),
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
              ),
              const SizedBox(
                height: 18,
              ),
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
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 36),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 1.5,
                              spreadRadius: 0.8,
                              color: Colors.black.withOpacity(0.2))
                        ],
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 4),
                            child: Image.asset(
                              'assets/images/medali1.png',
                              width: 36,
                            ),
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Juara 1 Nasional',
                                style: AppTextStyle.appTitlew700s10(),
                              ),
                              Text(
                                'Maulana Zakky Pahlevi',
                                style:
                                    AppTextStyle.appTitlew400s10(Colors.black),
                              ),
                              Text('Juara 1 Lomba',
                                  style: AppTextStyle.appTitlew400s10(
                                      Colors.black)),
                              Text('Ketampanan 2022',
                                  style: AppTextStyle.appTitlew400s10(
                                      Colors.black))
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 1.5,
                              spreadRadius: 0.8,
                              color: Colors.black.withOpacity(0.2))
                        ],
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 4),
                            child: Image.asset(
                              'assets/images/medali2.png',
                              width: 36,
                            ),
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Juara 2 Nasional',
                                style: AppTextStyle.appTitlew700s10(),
                              ),
                              Text(
                                'Maulana Zakky Pahlevi',
                                style:
                                    AppTextStyle.appTitlew400s10(Colors.black),
                              ),
                              Text('Juara 2 Lomba',
                                  style: AppTextStyle.appTitlew400s10(
                                      Colors.black)),
                              Text('Anak Terajin 2022',
                                  style: AppTextStyle.appTitlew400s10(
                                      Colors.black))
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 1.5,
                              spreadRadius: 0.8,
                              color: Colors.black.withOpacity(0.2))
                        ],
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 4),
                            child: Image.asset(
                              'assets/images/medali1.png',
                              width: 36,
                            ),
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Juara 1 Nasional',
                                style: AppTextStyle.appTitlew700s10(),
                              ),
                              Text(
                                'Maulana Zakky Pahlevi',
                                style:
                                    AppTextStyle.appTitlew400s10(Colors.black),
                              ),
                              Text('Juara 1 Lomba',
                                  style: AppTextStyle.appTitlew400s10(
                                      Colors.black)),
                              Text('Keberanian 2022',
                                  style: AppTextStyle.appTitlew400s10(
                                      Colors.black))
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 1.5,
                              spreadRadius: 0.8,
                              color: Colors.black.withOpacity(0.2))
                        ],
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 4),
                            child: Image.asset(
                              'assets/images/medali2.png',
                              width: 36,
                            ),
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Juara 2 Nasional',
                                style: AppTextStyle.appTitlew700s10(),
                              ),
                              Text(
                                'Maulana Zakky Pahlevi',
                                style:
                                    AppTextStyle.appTitlew400s10(Colors.black),
                              ),
                              Text('Juara 2 Lomba',
                                  style: AppTextStyle.appTitlew400s10(
                                      Colors.black)),
                              Text('Anak Terkuat 2022',
                                  style: AppTextStyle.appTitlew400s10(
                                      Colors.black))
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 38,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 18,
              ),
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
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.0),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/basket.png'),
                              fit: BoxFit.cover)),
                      margin: EdgeInsets.only(left: 34, top: 6),
                      padding: EdgeInsets.symmetric(horizontal: 9, vertical: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 80,
                          ),
                          Text(
                            'Extrakurikuler Basket',
                            style: AppTextStyle.appTitlew600s12(Colors.white),
                          ),
                          Text(
                            'Setiap Hari Senin 15:00 - 17:00',
                            style: AppTextStyle.appTitlew400s10(Colors.white),
                          ),
                          SizedBox(
                            width: 210,
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.0),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/pramuka.png'),
                              fit: BoxFit.cover)),
                      margin: const EdgeInsets.only(left: 16, top: 6),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 9, vertical: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 80,
                          ),
                          Text(
                            'Extrakurikuler Pramuka',
                            style: AppTextStyle.appTitlew600s12(Colors.white),
                          ),
                          Text(
                            'Setiap Hari Senin 14:00 - 16:00',
                            style: AppTextStyle.appTitlew400s10(Colors.white),
                          ),
                          SizedBox(
                            width: 210,
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.0),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/voli.png'),
                              fit: BoxFit.cover)),
                      margin: const EdgeInsets.only(left: 16, top: 6),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 9, vertical: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 80,
                          ),
                          Text(
                            'Extrakurikuler Volly',
                            style: AppTextStyle.appTitlew600s12(Colors.white),
                          ),
                          Text(
                            'Setiap Hari Senin 15:00 - 17:00',
                            style: AppTextStyle.appTitlew400s10(Colors.white),
                          ),
                          SizedBox(
                            width: 210,
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.0),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/tari.png'),
                              fit: BoxFit.cover)),
                      margin: const EdgeInsets.only(left: 16, top: 6),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 9, vertical: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 80,
                          ),
                          Text(
                            'Extrakurikuler Tari',
                            style: AppTextStyle.appTitlew600s12(Colors.white),
                          ),
                          Text(
                            'Setiap Hari Senin 14:00 - 15:00',
                            style: AppTextStyle.appTitlew400s10(Colors.white),
                          ),
                          SizedBox(
                            width: 210,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 38,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 36),
                child: Row(
                  children: [
                    Text(
                      'Lokasi',
                      style: AppTextStyle.appTitlew800s18(),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DenahPage()));
                      },
                      child: Text(
                        'Lihat Denah',
                        style: AppTextStyle.appTitlew400s13(
                            Color.fromRGBO(0, 0, 0, 0.5)),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 28),
                  child: Image.asset('assets/images/mapsnya.png')),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildIndicator(bool isSelected) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      height: isSelected ? 9 : 9,
      width: isSelected ? 9 : 9,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? AppColors.primaryColor : Colors.grey),
    );
  }
}
