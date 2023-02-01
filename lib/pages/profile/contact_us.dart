// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:aplikasi_si/theme/app_colors.dart';
import 'package:aplikasi_si/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({Key? key}) : super(key: key);

  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  _launchinstagram() async {
    const url = 'https://instagram.com/smpitdu?igshid=YmMyMTA2M2Y=';
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchfacebook() async {
    const url = 'https://www.facebook.com/smpit.du.16?mibextid=ZbWKwL';
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchtwitter() async {
    const url = 'https://twitter.com/elonmusk?t=VJQTJhnDfoAOUpakAyuwuQ&s=09';
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            context: context,
            builder: (context) => Container(
              margin: EdgeInsets.only(top: 10),
              height: 210,
              child: Column(
                children: [
                  SizedBox(
                    height: 6,
                  ),
                  Image.asset(
                    'assets/images/popuplogin.png',
                    width: 80,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Login terlebih dahulu untuk bergabung di Form Diskusi",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Login',
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
        backgroundColor: const Color(0xffCFECFC),
        elevation: 3,
        child: Image.asset(
          'assets/icon/chat.png',
          width: 30,
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/images/kontakkamibg2.png",
                    ),
                    fit: BoxFit.cover)),
            child: Column(
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 35),
                    child: Text(
                      'Kontak Kami',
                      style: AppTextStyle.appTitlew700s28(Colors.white),
                    )),
                const SizedBox(
                  height: 66,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: [
                      Image.asset('assets/icon/maps.png'),
                      const Spacer(),
                      Text(
                        'Jl. Raya Winong-Pucakwangi Km 02, Desa \nPekalongan, Kec. Winong, Pekalongan, \nKec. Pati, Kabupaten Pati, Jawa Tengah \n59181',
                        style: AppTextStyle.appTitlew400s12h12(),
                      )
                    ],
                  ),
                ),
                const Divider(
                  thickness: 1.0,
                  color: Colors.black12,
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 30, right: 119),
                  child: Row(
                    children: [
                      Image.asset('assets/icon/email.png'),
                      const Spacer(),
                      Text(
                        'mtsnegeri1pati@gmail.com',
                        style: AppTextStyle.appTitlew400s12h12(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Divider(
                  thickness: 1.0,
                  color: Colors.black12,
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 30, right: 194),
                  child: Row(
                    children: [
                      Image.asset('assets/icon/phone.png'),
                      const Spacer(),
                      Text(
                        '085228424485',
                        style: AppTextStyle.appTitlew400s12h12(),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Divider(
                  thickness: 1.0,
                  color: Colors.black12,
                ),
                const SizedBox(
                  height: 23,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            _launchinstagram();
                          });
                        },
                        child: Logo(Logos.instagram)),
                    const SizedBox(
                      width: 26,
                    ),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            _launchtwitter();
                          });
                        },
                        child: Logo(Logos.twitter)),
                    const SizedBox(
                      width: 26,
                    ),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            _launchfacebook();
                          });
                        },
                        child: Logo(Logos.facebook_logo))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
