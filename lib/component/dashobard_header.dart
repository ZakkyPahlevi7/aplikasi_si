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
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 34, right: 34, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/logo.png',
            width: 60,
          ),
          // CircleAvatar(
          //   child: GestureDetector(
          //     onTap: () {
          //       Navigator.push(context,
          //           MaterialPageRoute(builder: (context) => const StreamPage()));
          //     },
          //     child: Image.asset(
          //       'assets/images/profile.png',
          //       width: 58,
          //     ),
          //   ),
          // )
          const Spacer(),
          CircleAvatar(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignUpPage()));
              },
              child: Image.asset(
                'assets/images/profile.png',
                width: 58,
              ),
            ),
          )
        ],
      ),
    );
  }
}
