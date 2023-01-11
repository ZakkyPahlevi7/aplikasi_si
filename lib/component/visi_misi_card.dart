import 'package:flutter/material.dart';

class VisiMisiCard extends StatefulWidget {
  const VisiMisiCard({Key? key}) : super(key: key);

  @override
  State<VisiMisiCard> createState() => _VisiMisiCardState();
}

class _VisiMisiCardState extends State<VisiMisiCard> {
  int currentIndex = 0;

  List<String> images = [
    'assets/images/misiskolah.png',
    'assets/images/visitujuan.png'
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: PageView.builder(
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
                left: 28, bottom: 0, right: 28, top: 20),
            child: SizedBox(
              width: double.infinity,
              child: Image.asset(
                images[index % images.length],
                fit: BoxFit.fill,
                width: 200,
              ),
            ),
          );
        },
      ),
    );
  }
}
