// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class MapsContentPage extends StatefulWidget {
  const MapsContentPage({super.key});

  @override
  State<MapsContentPage> createState() => _MapsContentPageState();
}

class _MapsContentPageState extends State<MapsContentPage> {
  bool _isExpanded = false;

  void _toggleMessage() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration:
              BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8))),
          margin: EdgeInsets.symmetric(horizontal: 34),
          child: AspectRatio(
            aspectRatio: 1080 / 800,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              child: PhotoView(
                imageProvider:
                    AssetImage('assets/images/mapsekolahpersegi.png'),
                backgroundDecoration: BoxDecoration(color: Colors.white),
                minScale: PhotoViewComputedScale.contained * 1,
                maxScale: PhotoViewComputedScale.covered * 3,
              ),
            ),
          ),
        ),
        AnimatedContainer(
          padding: EdgeInsets.symmetric(vertical: 2),
          decoration: BoxDecoration(
              color: Color(0xff0962E0),
              borderRadius: BorderRadius.all(Radius.circular(4))),
          margin: EdgeInsets.only(left: 40, top: 8),
          width: _isExpanded ? 100.0 : 30.0,
          duration: Duration(milliseconds: 200),
          child: GestureDetector(
            onTap: _toggleMessage,
            child: _isExpanded
                ? Column(
                    children: [
                      FittedBox(
                        child: Row(
                          children: [
                            Icon(Icons.check, color: Colors.black),
                            Text('Message 1',
                                style: TextStyle(color: Colors.black)),
                          ],
                        ),
                      ),
                      FittedBox(
                        child: Row(
                          children: [
                            Icon(Icons.check, color: Colors.black),
                            Text('Message 2',
                                style: TextStyle(color: Colors.black)),
                          ],
                        ),
                      ),
                      FittedBox(
                        child: Row(
                          children: [
                            Icon(Icons.check, color: Colors.black),
                            Text('Message 3',
                                style: TextStyle(color: Colors.black)),
                          ],
                        ),
                      ),
                    ],
                  )
                : Icon(Icons.menu, color: Colors.white),
          ),
        )

        // AnimatedContainer(
        //   margin: EdgeInsets.only(left: 34),
        //   decoration: BoxDecoration(color: Colors.blue),
        //   width: _expanded ? 100 : 24,
        //   duration: Duration(milliseconds: 300),
        //   child: Row(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       _expanded
        //           ? Expanded(
        //               child: Column(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: [
        //                   FittedBox(
        //                     child: Text(
        //                       'Message 1',
        //                       style: TextStyle(
        //                         color: Colors.black,
        //                       ),
        //                     ),
        //                   ),
        //                   SizedBox(
        //                     height: 100,
        //                   ),
        //                   FittedBox(
        //                     child: Text(
        //                       'Message 2',
        //                       style: TextStyle(
        //                         color: Colors.black,
        //                       ),
        //                     ),
        //                   ),
        //                   FittedBox(
        //                     child: Text(
        //                       'Message 3',
        //                       style: TextStyle(
        //                         color: Colors.black,
        //                       ),
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //             )
        //           : Container(),
        //       GestureDetector(
        //         onTap: () {
        //           setState(() {
        //             _expanded = !_expanded;
        //           });
        //         },
        //         child: Column(
        //           children: [
        //             Icon(
        //               _expanded ? Icons.clear : Icons.message,
        //               color: Colors.black,
        //             ),
        //             Icon(
        //               _expanded ? Icons.message : Icons.help_outline

        //             )
        //           ],
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ],
    );
  }
}
