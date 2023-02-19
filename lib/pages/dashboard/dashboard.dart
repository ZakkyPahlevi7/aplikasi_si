// ignore_for_file: prefer_const_constructors

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../generateapi.dart';
import '../../main.dart';
import 'package:flutter/material.dart';
import '../../model/model_header.dart';
import '../page.dart';
import 'package:aplikasi_si/theme/theme.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  bool isloading = false;
  List<HeaderData> terserah = [];

  Future getApi() async {
    setState(() {
      isloading = true;
    });
    HeaderModel apa = await generateapi().getapi();
    setState(() {
      terserah = apa.data!;
      isloading = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    getApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: isloading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const DashboardHeader(),
                    const SizedBox(
                      height: 5,
                    ),
                    CarouselWithDotsPage(
                      gambarheader: terserah,
                      // imgList: imgList,
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    const visiMisiSection(),
                    SizedBox(
                      height: 18,
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
                );
              }),
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
