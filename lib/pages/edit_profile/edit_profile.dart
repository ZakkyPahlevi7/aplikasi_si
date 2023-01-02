import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../page.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 30, left: 33),
            child: Row(
              // ignore: prefer_const_constructors
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
                  style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
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
                    width: 210,
                  ),
                  Image.asset(
                    'assets/images/cameraedit.png',
                    width: 35,
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 33),
            child: const TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.black))),
            ),
          )
        ],
      ),
    );
  }
}
