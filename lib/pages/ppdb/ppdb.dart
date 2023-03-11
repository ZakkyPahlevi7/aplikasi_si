// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:aplikasi_si/controller/form_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class PpdbPage extends StatefulWidget {
  const PpdbPage({Key? key}) : super(key: key);

  @override
  State<PpdbPage> createState() => _PpdbPageState();
}

class _PpdbPageState extends State<PpdbPage> {
  final FormController _ppdbController = FormController();

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
    await _ppdbController.loadData(withLoading: true);
  }

  _launchPPDBL() async {
    const url = 'https://darojaatululuum.sch.id/ppdb/';
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchpdf1(String? _link) async {
    var url = _link!;
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: onRefresh,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 22),
                    child: Image.asset(
                      'assets/images/ppdbalur.png',
                      width: 340,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Obx(() => _ppdbController.isLoading.value ? CircularProgressIndicator() :
                  ListView.builder(
                      itemCount: _ppdbController.form.length,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, index){
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 14.0),
                          child: GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10))),
                                context: context,
                                builder: (context) => Container(
                                  margin: EdgeInsets.only(top: 40),
                                  height: 180,
                                  child: Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(7.0),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                                blurRadius: 1.9,
                                                spreadRadius: 2.1,
                                                color: Colors.black.withOpacity(0.1))
                                          ],
                                        ),
                                        margin: const EdgeInsets.symmetric(horizontal: 31),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 12, vertical: 8),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'assets/images/iconpdf.png',
                                              width: 30,
                                            ),
                                            SizedBox(width: 14),
                                            Text(
                                              _ppdbController.form[index].judul,
                                              style: GoogleFonts.poppins(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        margin: EdgeInsets.symmetric(horizontal: 10),
                                        child: Text(
                                          "Apakah anda yakin untuk mendownload file ini?",
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.poppins(
                                              fontSize: 16, fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            _launchpdf1(_ppdbController.form[index].link);
                                          });
                                        },
                                        child: Text(
                                          'Download',
                                          style: GoogleFonts.poppins(
                                              fontSize: 14, fontWeight: FontWeight.w500),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                            padding: EdgeInsets.symmetric(horizontal: 40)),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.0),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 1.9,
                                      spreadRadius: 2.1,
                                      color: Colors.black.withOpacity(0.1))
                                ],
                              ),
                              margin: const EdgeInsets.symmetric(horizontal: 31),
                              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/iconpdf.png',
                                    width: 30,
                                  ),
                                  SizedBox(width: 14),
                                  Text(
                                    _ppdbController.form[index].judul,
                                    style: GoogleFonts.poppins(
                                        fontSize: 12, fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _launchPPDBL();
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff0962E0),
                        padding:
                        EdgeInsets.symmetric(horizontal: 140, vertical: 10)),
                    child: Text(
                      'Daftar',
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
