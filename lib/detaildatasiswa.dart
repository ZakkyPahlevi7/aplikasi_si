import 'package:flutter/material.dart';

class detailsd extends StatefulWidget {
  const detailsd({Key? key}) : super(key: key);

  @override
  State<detailsd> createState() => _detailsdState();
}

class _detailsdState extends State<detailsd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Siswa'),
      ),
    );
  }
}
