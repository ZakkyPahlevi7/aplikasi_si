import 'package:aplikasi_si/pages/dashboard/civitas/detail_7a.dart';
import 'package:aplikasi_si/pages/dashboard/civitas/detail_7b.dart';
import 'package:aplikasi_si/pages/dashboard/civitas/detail_8a.dart';
import 'package:aplikasi_si/pages/dashboard/civitas/detail_8b.dart';
import 'package:aplikasi_si/pages/dashboard/civitas/detail_9a.dart';
import 'package:aplikasi_si/pages/dashboard/civitas/detail_9b.dart';
import 'package:aplikasi_si/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class DetailDataSiswa extends StatefulWidget {
  const DetailDataSiswa({Key? key}) : super(key: key);

  @override
  State<DetailDataSiswa> createState() => _DetailDataSiswaState();
}

class _DetailDataSiswaState extends State<DetailDataSiswa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Siswa'),
        backgroundColor: AppColors.contactUsIconColor,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
        child: Column(
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Detail7A()));
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 15),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: const Color(0xff93E396).withOpacity(0.5)),
                child: const Center(child: Text('Kelas 7A'),),
              )
            ),
            const SizedBox(height: 10,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Detail7B()));
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 15),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: const Color(0xff93E396).withOpacity(0.5)),
                child: const Center(child: Text('Kelas 7B'),),
              )
            ),
            const SizedBox(height: 10,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Detail8A()));
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 15),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: const Color(0xffEDCC5D).withOpacity(0.5)),
                child: const Center(child: Text('Kelas 8A'),),
              )
            ),
            const SizedBox(height: 10,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Detail8B()));
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 15),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: const Color(0xffEDCC5D).withOpacity(0.5)),
                child: const Center(child: Text('Kelas 8B'),),
              )
            ),
            const SizedBox(height: 10,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Detail9A()));
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 15),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: const Color(0xffFF9790).withOpacity(0.5)),
                child: const Center(child: Text('Kelas 9A'),),
              )
            ),
            const SizedBox(height: 10,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Detail9B()));
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 15),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: const Color(0xffFF9790).withOpacity(0.5)),
                child: const Center(child: Text('Kelas 9B'),),
              )
            ),
          ],
        )
      ),
    );
  }
}
