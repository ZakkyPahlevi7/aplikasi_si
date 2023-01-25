// ignore_for_file: prefer_const_constructors

import 'package:aplikasi_si/theme/app_colors.dart';
import 'package:aplikasi_si/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({Key? key}) : super(key: key);

  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: const Color(0xffCFECFC),
        elevation: 3,
        child: Image.asset('assets/icon/chat.png', width: 30,),
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
                    Logo(Logos.instagram),
                    const SizedBox(
                      width: 26,
                    ),
                    Logo(Logos.twitter),
                    const SizedBox(
                      width: 26,
                    ),
                    Logo(Logos.facebook_logo)
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
