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
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/images/kontakkamibg.png",
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
                      Icon(
                        Icons.location_on,
                        color: AppColors.contactUsIconColor,
                        size: 32,
                      ),
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
                      Icon(
                        Icons.mail,
                        color: AppColors.contactUsIconColor,
                        size: 30,
                      ),
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
                      Icon(
                        Icons.call,
                        color: AppColors.contactUsIconColor,
                        size: 30,
                      ),
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
          const Spacer(),
          Container(
            margin: const EdgeInsets.only(left: 260),
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5.0,
                      blurStyle: BlurStyle.normal,
                      offset: Offset(0, 2))
                ],
                color: const Color(0xffE6FFF6),
                borderRadius: BorderRadius.circular(30.0)),
            padding: const EdgeInsets.all(15),
            child: Icon(
              Icons.chat,
              color: AppColors.contactUsIconColor,
              size: 30,
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
