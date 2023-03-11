// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photo_view/photo_view.dart';
import 'package:url_launcher/url_launcher.dart';

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

  _launchgooglemaps() async {
    const url = 'https://goo.gl/maps/g4aXsU6zPuiHc6tc7';
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: (_) {},
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8))),
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
            decoration: BoxDecoration(
                color: _isExpanded
                    ? Color(0xff0962E0).withOpacity(0.6)
                    : Color(0xff0962E0),
                borderRadius: BorderRadius.all(Radius.circular(4))),
            margin: EdgeInsets.only(left: 40, top: 8),
            width: _isExpanded ? 186.0 : 30.0,
            duration: Duration(milliseconds: 200),
            child: GestureDetector(
              onTap: _toggleMessage,
              child: _isExpanded
                  ? Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 8,
                          ),
                          FittedBox(
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  '   Contact Information',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          FittedBox(
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 12,
                                ),
                                Icon(
                                  Icons.call_outlined,
                                  color: Colors.white,
                                  size: 16,
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text('02129517205',
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          FittedBox(
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 12,
                                ),
                                Icon(
                                  Icons.message,
                                  color: Colors.white,
                                  size: 16,
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text('smpit.du@yahoo.com',
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          FittedBox(
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 12,
                                ),
                                Icon(
                                  Icons.language,
                                  color: Colors.white,
                                  size: 16,
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text('darojaatululuum.sch.id',
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 14),
                            child: Divider(
                              color: Colors.white,
                              thickness: 1.4,
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          FittedBox(
                            child: Container(
                              width: 250,
                              height: 45,
                              margin: EdgeInsets.symmetric(horizontal: 20),
                              child: OutlinedButton.icon(
                                  style: OutlinedButton.styleFrom(
                                      side: BorderSide(
                                          width: 1.8, color: Colors.white)),
                                  onPressed: () {
                                    _launchgooglemaps();
                                  },
                                  icon: Icon(
                                    Icons.call_made_outlined,
                                    color: Colors.white,
                                    size: 26,
                                  ),
                                  label: Text(
                                    'Lihat Selengkapnya',
                                    style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
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
      ),
    );
  }
}
