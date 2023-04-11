import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

import '../../controller/form_controller.dart';

Future<String> getFilePath() async {
  String _filepath = 'http://adminsmpitdu.kencang.id/fileform/Makalah.pdf';
  return _filepath;
}

class PdfPage extends StatefulWidget {

  PdfPage({Key? key}) : super(key: key);

  @override
  State<PdfPage> createState() => _PdfPageState();
}

class _PdfPageState extends State<PdfPage> {
  String? path;
  final FormController _ppdbController = FormController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getFilePath().then((_filepath) {
      setState(() {
        path = _filepath;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PDFView(
        filePath: path,
        enableSwipe: true,
        swipeHorizontal: true,
        autoSpacing: false,
        pageFling: false,
        onRender: (_pages) {
          // print number of pages in PDF on render
          print('number of pages: $_pages');
        },
        onError: (error) {
          // show error message
          print(error.toString());
        },
        onPageError: (page, error) {
          // show error message for a specific page
          print('$page: ${error.toString()}');
        },
      ),
    );
  }
}
