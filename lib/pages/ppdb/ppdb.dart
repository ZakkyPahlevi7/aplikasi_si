// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class PpdbPage extends StatefulWidget {
  const PpdbPage({Key? key}) : super(key: key);

  @override
  State<PpdbPage> createState() => _PpdbPageState();
}

class _PpdbPageState extends State<PpdbPage> {
  _launchPPDBL() async {
    const url = 'https://darojaatululuum.sch.id/ppdb/';
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchpdf1() async {
    const url =
        'http://kemahasiswaanfti.unissula.ac.id/wp-content/uploads/2011/06/Contoh-Proposal-Kegiatan.pdf';
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchpdf2() async {
    const url =
        'http://kemahasiswaanfti.unissula.ac.id/wp-content/uploads/2011/06/Contoh-Proposal-Kegiatan.pdf';
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
      body: ListView(
        children: [
          Column(
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
              GestureDetector(
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
                                Spacer(),
                                Text(
                                  'Informasi PPDB MTsN 1 Pati 2021 / 2022',
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
                                _launchpdf1();
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
                      Spacer(),
                      Text(
                        'Informasi PPDB MTsN 1 Pati 2021 / 2022',
                        style: GoogleFonts.poppins(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
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
                                Spacer(),
                                Text(
                                  'Informasi Murid PPDB Lulus MTsN 1 Pati',
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
                                _launchpdf2();
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
                      Spacer(),
                      Text(
                        'Informasi Murid PPDB Lulus MTsN 1 Pati',
                        style: GoogleFonts.poppins(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
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
        ],
      ),
    );
  }
}
