// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

class kontakkamipage extends StatefulWidget {
  const kontakkamipage({Key? key}) : super(key: key);

  @override
  State<kontakkamipage> createState() => _kontakkamipageState();
}

class _kontakkamipageState extends State<kontakkamipage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/images/kontakkamibg.png",
                    ),
                    fit: BoxFit.cover)),
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 35),
                    child: Text(
                      'Kontak Kami',
                      style: GoogleFonts.poppins(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )),
                SizedBox(
                  height: 66,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Color(0xff00FFA3),
                        size: 32,
                      ),
                      Spacer(),
                      Text(
                        'Jl. Raya Winong-Pucakwangi Km 02, Desa \nPekalongan, Kec. Winong, Pekalongan, \nKec. Pati, Kabupaten Pati, Jawa Tengah \n59181',
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            height: 1.2),
                      )
                    ],
                  ),
                ),
                Divider(
                  thickness: 1.0,
                  color: Colors.black12,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, right: 119),
                  child: Row(
                    children: [
                      Icon(
                        Icons.mail,
                        color: Color(0xff00FFA3),
                        size: 30,
                      ),
                      Spacer(),
                      Text(
                        'mtsnegeri1pati@gmail.com',
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            height: 1.2),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Divider(
                  thickness: 1.0,
                  color: Colors.black12,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, right: 194),
                  child: Row(
                    children: [
                      Icon(
                        Icons.call,
                        color: Color(0xff00FFA3),
                        size: 30,
                      ),
                      Spacer(),
                      Text(
                        '085228424485',
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            height: 1.2),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Divider(
                  thickness: 1.0,
                  color: Colors.black12,
                ),
                SizedBox(
                  height: 23,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Logo(Logos.instagram),
                    SizedBox(
                      width: 26,
                    ),
                    Logo(Logos.twitter),
                    SizedBox(
                      width: 26,
                    ),
                    Logo(Logos.facebook_logo)
                  ],
                )
              ],
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(left: 260),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5.0,
                      blurStyle: BlurStyle.normal,
                      offset: Offset(0, 2))
                ],
                color: Color(0xffE6FFF6),
                borderRadius: BorderRadius.circular(30.0)),
            padding: EdgeInsets.all(15),
            child: Icon(
              Icons.chat,
              color: Color(0xff00FFA3),
              size: 30,
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
