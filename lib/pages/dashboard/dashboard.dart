// ignore_for_file: prefer_const_constructors

import 'package:aplikasi_si/component/event_section.dart';
import 'package:aplikasi_si/controller/prestasi_controller.dart';
import 'package:aplikasi_si/model/spp_model.dart';
import 'package:aplikasi_si/model/user_model.dart';
import 'package:aplikasi_si/pages/profile/spp/beranda_spp.dart';
import 'package:aplikasi_si/pages/profile/spp/spp.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../controller/dashboard_controller.dart';
import '../../controller/extrakurikuler_controller.dart';
import '../../controller/user_controller.dart';
import '../../generateapi.dart';
import '../../main.dart';
import 'package:flutter/material.dart';
import '../../model/model_header.dart';
import '../page.dart';
import 'package:aplikasi_si/theme/theme.dart';

import 'maps_sekolah.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  bool isloading = false;
  final _controller = Get.put(DashboardController());
  final _userController = Get.put(UserController());

  @override
  void initState() {
    _initData();
    // TODO: implement initState
    super.initState();
  }

  Future onRefresh() async {
    await _initData();
  }

  Future<Null> _initData() async {
    await _controller.loadData(withLoading: true);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          return false;
        },
        child: Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
                child: SingleChildScrollView(
                    child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 12,
                ),
                const DashboardHeader(),
                const SizedBox(
                  height: 5,
                ),
                CarouselWithDotsPage(
                  // gambarheader: terserah,
                  imgList: imgList,
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 36),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                      color: Color(0xffCFECFE),
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  padding: EdgeInsets.only(left: 18, top: 18, bottom: 18),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ingin mengetahui \nspp anak anda \nsekarang?',
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff0E2946)),
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xffFFFFFF),
                                  elevation: 0,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 12)),
                              onPressed: () {
                                Get.to(SppLogin());
                              },
                              child: Text(
                                'Check now',
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff0E2946).withOpacity(0.8)),
                              ))
                        ],
                      ),
                      Image.asset(
                        'assets/images/kartunspp.png',
                        width: 152,
                      )
                    ],
                  ),
                ),

                // Center(
                //   child: GestureDetector(
                //     onTap: (){Get.to(SppLogin());},
                //     child: Image.asset('assets/images/banner_spp.png'),
                //   ),
                // ),
                const SizedBox(
                  height: 24,
                ),
                const EventSection(),
                const SizedBox(
                  height: 18,
                ),
                // const visiMisiSection(),
                // const SizedBox(
                //   height: 18,
                // ),
                const PrestasiSection(),
                const SizedBox(
                  height: 18,
                ),
                const ExtraSection(),
                SizedBox(
                  height: 18,
                ),
                const CivitasSection(),
                const SizedBox(
                  height: 18,
                ),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 36),
                    child: Row(
                      children: [
                        Icon(
                          Icons.map,
                          color: Color(0xff0962E0),
                        ),
                        SizedBox(
                          width: 6,
                        ),
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
                        ),
                      ],
                    )),
                const SizedBox(
                  height: 12,
                ),
                MapsContentPage(),
                const SizedBox(
                  height: 20,
                ),
              ],
            )))));
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
