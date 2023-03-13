import 'package:aplikasi_si/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_si/bottom_navbar.dart';

import '../../theme/app_text_styles.dart';

class DenahPage extends StatefulWidget {
  const DenahPage({Key? key}) : super(key: key);

  @override
  State<DenahPage> createState() => _DenahPageState();
}

class _DenahPageState extends State<DenahPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Denah Sekolah'), backgroundColor: AppColors.contactUsIconColor,),
      // backgroundColor: AppColors.contactUsIconColor,
      body: Column(
        children: [
          Container(
              margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Image.asset('assets/images/denah_du.png'))
        ],
      ),
    );
  }
}
