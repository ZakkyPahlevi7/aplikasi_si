// ignore_for_file: unused_import

import 'package:aplikasi_si/pages/edit_profile/logincheck.dart';
import 'package:aplikasi_si/pages/edit_profile/loginuser.dart';
import 'package:aplikasi_si/pages/edit_profile/sign_up_widget.dart';
import 'package:aplikasi_si/pages/edit_profile/stream.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../pages/page.dart';

class DashboardHeader extends StatefulWidget {
  const DashboardHeader({Key? key}) : super(key: key);

  @override
  State<DashboardHeader> createState() => _DashboardHeaderState();
}

class _DashboardHeaderState extends State<DashboardHeader> {
  // final GoogleSignIn _googleSignIn = GoogleSignIn();

  // @override
  // void initState() {
  //   super.initState();

  // }

  // void _checkLoginStatus() {
  //   print('ERROR COK' + _googleSignIn.toString());

  //   if (_googleSignIn.currentUser != null) {
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => ProfilePage(),
  //       ),
  //     );
  //   } else {
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => LoginPage(),
  //       ),
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 34, right: 34, top: 10),
      child: Row(
        children: [
          Image.asset(
            'assets/images/logo.png',
            width: 60,
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const StreamPage()));
            },
            child: Image.asset(
              'assets/images/profile.png',
              width: 58,
            ),
          )
        ],
      ),
    );
  }
}
