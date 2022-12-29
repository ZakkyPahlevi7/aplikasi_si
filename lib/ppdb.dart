// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ppdbpage extends StatefulWidget {
  const ppdbpage({Key? key}) : super(key: key);

  @override
  State<ppdbpage> createState() => _ppdbpageState();
}

class _ppdbpageState extends State<ppdbpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: 
          [Column(
            children: [
              SizedBox(height: 10,),
              Center(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 28),
                  child: Image.asset(
                    'assets/images/alurppdb.png',
                    width: 340,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
