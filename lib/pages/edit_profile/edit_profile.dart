// ignore_for_file: prefer_const_constructors

import 'package:aplikasi_si/component/text_field.dart';
import 'package:aplikasi_si/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../page.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  TextEditingController textFieldController1 = TextEditingController();
  TextEditingController textFieldController2 = TextEditingController();
  TextEditingController textFieldController3 = TextEditingController();
  TextEditingController textFieldController4 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 30, horizontal: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ProfilePage()));
                        },
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                          size: 26,
                        )),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      'Edit Profile',
                      style: AppTextStyle.appTitlew400s18(Colors.black),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 40),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/editgambar.png'),
                        fit: BoxFit.contain)),
                child: Container(
                  margin: const EdgeInsets.only(
                    top: 110,
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 180,
                      ),
                      Image.asset(
                        'assets/images/cameraedit.png',
                        width: 35,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              CustomTextField(hintText: 'Masukkan Username', label: 'Username', controller: textFieldController1),
              CustomTextField(hintText: 'Masukkan Email', label: 'Email', controller: textFieldController2,),
              CustomTextField(hintText: 'Masukkan No.Telp', label: 'No. Telp', controller: textFieldController3,),
              CustomTextField(hintText: 'Masukkan Tanggal Lahir', label: 'Tanggal Lahir', controller: textFieldController4,),
              SizedBox(
                height: 20,
              ),
              Container(
                child: SizedBox(
                  height: 44,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff1468E2)),
                    child: Text('Simpan'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
