import 'package:flutter/material.dart';

class DetailDataSiswa extends StatefulWidget {
  const DetailDataSiswa({Key? key}) : super(key: key);

  @override
  State<DetailDataSiswa> createState() => _DetailDataSiswaState();
}

class _DetailDataSiswaState extends State<DetailDataSiswa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Siswa'),
      ),
    );
  }
}
