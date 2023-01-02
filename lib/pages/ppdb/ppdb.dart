import 'package:flutter/material.dart';

class PpdbPage extends StatefulWidget {
  const PpdbPage({Key? key}) : super(key: key);

  @override
  State<PpdbPage> createState() => _PpdbPageState();
}

class _PpdbPageState extends State<PpdbPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: 
          [Column(
            children: [
              const SizedBox(height: 10,),
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 28),
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
