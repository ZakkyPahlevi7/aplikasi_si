import 'package:aplikasi_si/theme/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../main.dart';
import 'package:flutter/material.dart';
import '../page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int currentIndex = 0;

  List<String> images = [
    'assets/images/misiskolah.png',
    'assets/images/visitujuan.png'
  ];

  Widget myText(String textnya) {
    return Text(
      textnya,
      style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 18),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 34, right: 34, top: 10),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      width: 80,
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ProfilePage()));
                      },
                      child: Image.asset(
                        'assets/images/profile.png',
                        width: 45,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              CarouselWithDotsPage(imgList: imgList),
              SizedBox(
                height: 300,
                width: double.infinity,
                child: PageView.builder(
                  onPageChanged: (index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          left: 28, bottom: 0, right: 28, top: 20),
                      child: SizedBox(
                        width: double.infinity,
                        child: Image.asset(
                          images[index % images.length],
                          fit: BoxFit.fill,
                          width: 200,
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (var i = 0; i < images.length; i++)
                    buildIndicator(currentIndex == i)
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 12, left: 36),
                child: myText('Civitas'),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const DetailKepalaSekolah()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.0),
                          border: Border.all(color: AppColors.primaryColor)),
                      margin: const EdgeInsets.only(left: 36),
                      padding:
                          const EdgeInsets.symmetric(horizontal: 19.5, vertical: 4),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/profilks.png',
                            width: 22,
                          ),
                          Text(
                            'Kepala Sekolah',
                            style: GoogleFonts.poppins(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const DetailWakilKepala()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.0),
                          border: Border.all(color: AppColors.primaryColor)),
                      margin: const EdgeInsets.only(right: 36),
                      padding:
                          const EdgeInsets.symmetric(horizontal: 27.5, vertical: 4),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/profilwk.png',
                            width: 22,
                          ),
                          Text(
                            'Wakil Kepala',
                            style: GoogleFonts.poppins(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const DetailDataGuru()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.0),
                          border: Border.all(color: AppColors.primaryColor)),
                      margin: const EdgeInsets.only(left: 36),
                      padding:
                          const EdgeInsets.symmetric(horizontal: 35.2, vertical: 4),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/profildg.png',
                            width: 22,
                          ),
                          Text(
                            'Data Guru',
                            style: GoogleFonts.poppins(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const DetailWaliKelas()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.0),
                          border: Border.all(color: AppColors.primaryColor)),
                      margin: const EdgeInsets.only(right: 36),
                      padding:
                          const EdgeInsets.symmetric(horizontal: 35.5, vertical: 4),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/profilkw.png',
                            width: 22,
                          ),
                          Text(
                            'Wali Kelas',
                            style: GoogleFonts.poppins(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const DetaiDataStaff())));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.0),
                          border: Border.all(color: AppColors.primaryColor)),
                      margin: const EdgeInsets.only(left: 36),
                      padding:
                          const EdgeInsets.symmetric(horizontal: 35.7, vertical: 4),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/profilds.png',
                            width: 22,
                          ),
                          Text(
                            'Data Staff',
                            style: GoogleFonts.poppins(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const DetailDataSiswa()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.0),
                          border: Border.all(color: AppColors.primaryColor)),
                      margin: const EdgeInsets.only(right: 36),
                      padding:
                          const EdgeInsets.symmetric(horizontal: 32.5, vertical: 4),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/profilwk.png',
                            width: 22,
                          ),
                          Text(
                            'Data Siswa',
                            style: GoogleFonts.poppins(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 36),
                child: Row(
                  children: [
                    Text(
                      'Prestasi',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ListPrestasiPage()));
                      },
                      child: Text(
                        'Lihat Semua',
                        style: GoogleFonts.poppins(
                            color: const Color.fromRGBO(0, 0, 0, 0.5), fontSize: 13),
                      ),
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
                      padding:
                          const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w700, fontSize: 10),
                              ),
                              Text(
                                'Maulana Zakky Pahlevi',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400, fontSize: 10),
                              ),
                              Text('Juara 1 Lomba',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10)),
                              Text('Ketampanan 2022',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10))
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
                      padding:
                          const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w700, fontSize: 10),
                              ),
                              Text(
                                'Maulana Zakky Pahlevi',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400, fontSize: 10),
                              ),
                              Text('Juara 2 Lomba',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10)),
                              Text('Anak Terajin 2022',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10))
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
                      padding:
                          const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w700, fontSize: 10),
                              ),
                              Text(
                                'Maulana Zakky Pahlevi',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400, fontSize: 10),
                              ),
                              Text('Juara 1 Lomba',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10)),
                              Text('Keberanian 2022',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10))
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
                      padding:
                          const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w700, fontSize: 10),
                              ),
                              Text(
                                'Maulana Zakky Pahlevi',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400, fontSize: 10),
                              ),
                              Text('Juara 2 Lomba',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10)),
                              Text('Anak Terkuat 2022',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10))
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
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold, fontSize: 18),
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
                        children: const [
                          SizedBox(
                            height: 80,
                          ),
                          Text(
                            'Extrakurikuler Basket',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Setiap Hari Senin 15:00 - 17:00',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w400),
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
                      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(
                            height: 80,
                          ),
                          Text(
                            'Extrakurikuler Pramuka',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Setiap Hari Senin 14:00 - 16:00',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w400),
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
                      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(
                            height: 80,
                          ),
                          Text(
                            'Extrakurikuler Volly',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Setiap Hari Senin 15:00 - 17:00',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w400),
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
                      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(
                            height: 80,
                          ),
                          Text(
                            'Extrakurikuler Tari',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Setiap Hari Senin 14:00 - 15:00',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w400),
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
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold, fontSize: 18),
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
                        style: GoogleFonts.poppins(
                            color: const Color.fromRGBO(0, 0, 0, 0.5), fontSize: 13),
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
