// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:aplikasi_si/pages/profile/spp/akses_spp.dart';
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
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => aksesSppPage()));
        },
        backgroundColor: const Color(0xffCFECFC),
        elevation: 3,
        child: Icon(
          Icons.receipt_long,
          color: Color(0xff0962E0),
          size: 31,
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
