// ignore_for_file: avoid_unnecessary_containers, camel_case_types, prefer_const_constructors

import 'package:aplikasi_si/component/visi_misi_card.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class visiMisiSection extends StatefulWidget {
  const visiMisiSection({super.key});

  @override
  State<visiMisiSection> createState() => _visiMisiSectionState();
}

class _visiMisiSectionState extends State<visiMisiSection> {
  final _controller = PageController();

  void nextPage() {
    _controller!.animateToPage(_controller!.page!.toInt() + 1,
        duration: Duration(milliseconds: 200), curve: Curves.easeIn);
  }

  void previousPage() {
    _controller!.animateToPage(_controller!.page!.toInt() - 1,
        duration: Duration(milliseconds: 200), curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
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
          margin: EdgeInsets.only(left: 36, right: 36),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.9,
          child: PageView(
            controller: _controller,
            children: [
              buildVisiTujuan(),
              buildMisi(),
              GestureDetector(
                onHorizontalDragEnd: (details) {
                  setState(() {
                    nextPage();
                  });
                },
                child: buildVisiTujuan(),
              ),
              GestureDetector(
                onHorizontalDragEnd: (details) {
                  setState(() {
                    previousPage();
                  });
                },
                child: buildMisi(),
              )
            ],
          ),
        ),
        SizedBox(
          height: 14,
        ),
        SmoothPageIndicator(
          controller: _controller,
          count: 2,
          effect: ExpandingDotsEffect(
              activeDotColor: Color(0xff0962E0),
              dotColor: Color(0xffD9D9D9),
              dotHeight: 10,
              dotWidth: 10),
        )
      ],
    );
  }

  buildVisiTujuan() {
    return Container(
      child: Column(children: [
        visiMisiCard(
          icon: 'assets/images/iconeyes.png',
          title: 'Visi',
          keterangan:
              'Terbentuknya Sekolah yang unggul dan terpercaya dalam menyiapkan generasi masa depan yang bertaqwa kepada Allah SWT.',
        ),
        visiMisiCard(
            icon: 'assets/images/icontarget.png',
            title: 'Misi',
            keterangan:
                'Menghasilkan peserta didik yang berkarakter Islami dengan penerapan sholat wajib, sunnah, dan memfokuskan peserta didik dalam menghafal Al-Quran Menghasilkan peserta didik yang gemar membaca dan mencintai ilmu pengetahuan Mewujudkan efektifitas dan kualitas pembelajaran berbasis teknologi Menghasilkan lulusan yng unggul dalam prestasi alademik dan non akademik Menghasilkan sumber daya manusia yang peduli terhadap lingkungan hidup dengan penerapan program sekolah adiwiyata Mewujudkan hubungan yang harmonis dan dinamis antara sekolah dengan seluruh warga sekolah.')
      ]),
    );
  }
}

buildMisi() {
  return Column(children: [
    visiMisiCard(
      icon: 'assets/images/iconrocket.png',
      title: 'Misi',
      keterangan:
          'Mengembangkan pendidikan yang bertumpu pada iman dan bertaqwa (IMTAQ) serta Ilmu pengetahuan dan teknologi (IPTEK) Mengahsilkan Peserta Didik yang beriman dan bertaqwa kepada Allah SWT, berakhlak mulia, sehat jasmani dan rohani, berilmu, cerdas, terampil, kreatif, mandiri, berani, percaya diri, tanggung jawab, serta memiliki optimisme dalam mencapai masa depan. Membekali peserta didik dengan pelatihan amaliyah yang sesuai dengan tuntunan Rasulullah SAW, pembinaan keteladan akhlak mulia dan sikap dan perilaku islami, melatih dan membiasakan ibadah membaca dan memahami Al-Qur’an. Mewujudkan prestasi akademik peserta didik yang komprehensif, berkualitas, dan kompetitif.',
    ),
  ]);
}
