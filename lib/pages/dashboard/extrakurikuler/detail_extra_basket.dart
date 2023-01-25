// ignore_for_file: camel_case_types, avoid_unnecessary_containers

import 'package:aplikasi_si/pages/dashboard/dashboard.dart';
import 'package:flutter/material.dart';

import '../../../theme/app_text_styles.dart';

class detailExtraBasket extends StatefulWidget {
  const detailExtraBasket({super.key});

  @override
  State<detailExtraBasket> createState() => _detailExtraBasketState();
}

class _detailExtraBasketState extends State<detailExtraBasket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                child: Row(
                  // ignore: prefer_const_constructors
                  children: [
                    const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                      size: 26,
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      'Prestasi',
                      style: AppTextStyle.appTitlew400s18(Colors.black),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
