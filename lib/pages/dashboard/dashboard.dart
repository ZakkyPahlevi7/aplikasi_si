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
              const CivitasSection(),
              const SizedBox(
                height: 18,
              ),
              const PrestasiSection(),
              const SizedBox(
                height: 18,
              ),
              const ExtraSection(),
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
                            const Color.fromRGBO(0, 0, 0, 0.5)),
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
