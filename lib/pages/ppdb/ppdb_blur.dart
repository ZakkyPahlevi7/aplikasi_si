import 'package:flutter/material.dart';

class PpdbBlur extends StatelessWidget {
  final String link;
  const PpdbBlur({super.key, required this.link});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Image.asset(
        link,
        width: 1200,
      ),
    );
  }
}
