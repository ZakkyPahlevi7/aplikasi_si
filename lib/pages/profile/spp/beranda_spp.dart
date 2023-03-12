// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:aplikasi_si/controller/spp_controller.dart';
import 'package:aplikasi_si/controller/user_controller.dart';
import 'package:aplikasi_si/model/spp_model.dart';
import 'package:aplikasi_si/pages/profile/spp/tagihansmt1.dart';
import 'package:aplikasi_si/pages/profile/spp/tagihansmt2.dart';
import 'package:aplikasi_si/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:aplikasi_si/model/user_model.dart' as userModel;

class SppScreen extends StatefulWidget {
  SppModel sppModel;
  userModel.User userModels;
  SppScreen({super.key, required this.sppModel, required this.userModels});

  @override
  State<SppScreen> createState() => _SppScreenState();
}

class _SppScreenState extends State<SppScreen> {
  final SppController _sppCtrl = SppController();
  final UserController _userCtrl = UserController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SPP Siswa'), 
        backgroundColor: AppColors.contactUsIconColor, leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () => Get.toNamed('/main', arguments: {'id': Random().nextInt(10000).toString()}),
      ),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin:
              const EdgeInsets.only(left: 26, right: 26, top: 16, bottom: 8),
              padding:
              const EdgeInsets.only(left: 14, right: 14, top: 8, bottom: 8),
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
              child: Row(
                children: [
                  Image.network(
                    widget.userModels.link,
                    width: 55,
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.userModels.nama,
                        style: GoogleFonts.poppins(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        widget.userModels.kelas,
                        style: GoogleFonts.poppins(
                            fontSize: 13, fontWeight: FontWeight.w400),
                      )
                    ],
                  )
                ],
              ),
            ),
            ListView.separated(
              separatorBuilder: (BuildContext context, index){
                return SizedBox(height: 12);
              },
                clipBehavior: Clip.hardEdge,
                shrinkWrap: true,
                itemCount: widget.sppModel.spps!.length,
                itemBuilder: (BuildContext context, index){
                  return GestureDetector(
                    onTap: () {
                      try{
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailSPP(sppDatas: widget.sppModel.spps![index].spp))
                        );
                      }catch(e){
                        print(e.toString());
                      }
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 26),
                      height: 100,
                      padding: EdgeInsets.all(12), // atur jarak teks dari pinggir container
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
                      child: Center(
                        child: Text(
                          widget.sppModel.spps![index].tahun,
                          style: TextStyle(
                            fontSize: 16, // atur ukuran teks sesuai kebutuhan
                            fontWeight:
                            FontWeight.w500, // atur gaya teks sesuai kebutuhan
                          ),
                        ),
                      ),
                    ),
                  );
                }
            ),
          ],
        ),
      ),
    );
  }
}
