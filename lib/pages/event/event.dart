import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventPage extends StatefulWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 30, left: 32, bottom: 20),
                  child: Text(
                    'Event yang akan datang',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  )),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffEDCC5D),
                          borderRadius: BorderRadius.circular(8.0)),
                      margin: const EdgeInsets.only(left: 33),
                      padding:
                          const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Camping',
                            style: GoogleFonts.poppins(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Kelas 7-9',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.black54),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Image.asset(
                            'assets/images/camping.png',
                            width: 160,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 126),
                            child: Image.asset(
                              'assets/images/bunder.png',
                              width: 34,
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.calendar_month,
                                size: 12,
                                color: Colors.black45,
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                '12 Oktober 2022',
                                style: GoogleFonts.poppins(
                                    fontSize: 10, fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.location_on,
                                size: 12,
                                color: Colors.black45,
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                'Halaman Sekolah',
                                style: GoogleFonts.poppins(
                                    fontSize: 10, fontWeight: FontWeight.w400),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color(0xff93E396),
                          borderRadius: BorderRadius.circular(8.0)),
                      margin: const EdgeInsets.only(left: 20),
                      padding:
                          const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Live Musik',
                            style: GoogleFonts.poppins(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Seluruh siswa',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.black54),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Image.asset(
                            'assets/images/livemusik.png',
                            width: 160,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 126),
                            child: Image.asset(
                              'assets/images/bunder.png',
                              width: 34,
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.calendar_month,
                                size: 12,
                                color: Colors.black45,
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                '12 September 2022',
                                style: GoogleFonts.poppins(
                                    fontSize: 10, fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.location_on,
                                size: 12,
                                color: Colors.black45,
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                'Studio Sekolah',
                                style: GoogleFonts.poppins(
                                    fontSize: 10, fontWeight: FontWeight.w400),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color(0xff85B6FF),
                          borderRadius: BorderRadius.circular(8.0)),
                      margin: const EdgeInsets.only(left: 20),
                      padding:
                          const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Cosplay',
                            style: GoogleFonts.poppins(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Seluruh siswa',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.black54),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Image.asset(
                            'assets/images/cosplay.png',
                            width: 160,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 126),
                            child: Image.asset(
                              'assets/images/bunder.png',
                              width: 34,
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.calendar_month,
                                size: 12,
                                color: Colors.black45,
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                '10 November 2022',
                                style: GoogleFonts.poppins(
                                    fontSize: 10, fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.location_on,
                                size: 12,
                                color: Colors.black45,
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                'Halaman Sekolah',
                                style: GoogleFonts.poppins(
                                    fontSize: 10, fontWeight: FontWeight.w400),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffFF9790),
                          borderRadius: BorderRadius.circular(8.0)),
                      margin: const EdgeInsets.only(left: 20),
                      padding:
                          const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Teater',
                            style: GoogleFonts.poppins(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Seluruh siswa',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.black54),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Image.asset(
                            'assets/images/teater.png',
                            width: 160,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 126),
                            child: Image.asset(
                              'assets/images/bunder.png',
                              width: 34,
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.calendar_month,
                                size: 12,
                                color: Colors.black45,
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                '25 November 2022',
                                style: GoogleFonts.poppins(
                                    fontSize: 10, fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.location_on,
                                size: 12,
                                color: Colors.black45,
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                'Aula Sekolah',
                                style: GoogleFonts.poppins(
                                    fontSize: 10, fontWeight: FontWeight.w400),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 33,
                    )
                  ],
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 26, left: 32, bottom: 20),
                  child: Text(
                    'Event yang telah berlalu',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  )),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffFF9790),
                        borderRadius: BorderRadius.circular(8.0)),
                    margin: const EdgeInsets.only(left: 33),
                    padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 13),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Masak \nTradisional',
                          style: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              height: 1.2),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Seluruh kelas 7, 8 dan 9',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 7,
                              color: Colors.black54),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Image.asset(
                          'assets/images/tradisional.png',
                          width: 110,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 86),
                          child: Image.asset(
                            'assets/images/bunder.png',
                            width: 24,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.calendar_month,
                              size: 12,
                              color: Colors.black45,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              '04 Oktober 2022',
                              style: GoogleFonts.poppins(
                                  fontSize: 8, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              size: 12,
                              color: Colors.black45,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              'Aula Sekolah',
                              style: GoogleFonts.poppins(
                                  fontSize: 8, fontWeight: FontWeight.w400),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffEDCC5D),
                        borderRadius: BorderRadius.circular(8.0)),
                    margin: const EdgeInsets.only(right: 33),
                    padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 13),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pameran \nKelas 9',
                          style: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              height: 1.2),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Seluruh kelas 7, 8 dan 9',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 7,
                              color: Colors.black54),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Image.asset(
                          'assets/images/pameran.png',
                          width: 110,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 86),
                          child: Image.asset(
                            'assets/images/bunder.png',
                            width: 24,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.calendar_month,
                              size: 12,
                              color: Colors.black45,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              '26 September 2022',
                              style: GoogleFonts.poppins(
                                  fontSize: 8, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              size: 12,
                              color: Colors.black45,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              'Studio Sekolah',
                              style: GoogleFonts.poppins(
                                  fontSize: 8, fontWeight: FontWeight.w400),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 22,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xff85B6FF),
                        borderRadius: BorderRadius.circular(8.0)),
                    margin: const EdgeInsets.only(left: 33),
                    padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 13),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Seminar & \nKonfrensi',
                          style: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              height: 1.2),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Seluruh kelas 7, 8 dan 9',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 7,
                              color: Colors.black54),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Image.asset(
                          'assets/images/seminar.png',
                          width: 110,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 86),
                          child: Image.asset(
                            'assets/images/bunder.png',
                            width: 24,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.calendar_month,
                              size: 12,
                              color: Colors.black45,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              '29 Agustus 2022',
                              style: GoogleFonts.poppins(
                                  fontSize: 8, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              size: 12,
                              color: Colors.black45,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              'Studio Sekolah',
                              style: GoogleFonts.poppins(
                                  fontSize: 8, fontWeight: FontWeight.w400),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xff93E396),
                        borderRadius: BorderRadius.circular(8.0)),
                    margin: const EdgeInsets.only(right: 33),
                    padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 13),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bazaar \nPakaian Adat',
                          style: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              height: 1.2),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Seluruh kelas 7, 8 dan 9',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 7,
                              color: Colors.black54),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Image.asset(
                          'assets/images/bazaar.png',
                          width: 110,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 86),
                          child: Image.asset(
                            'assets/images/bunder.png',
                            width: 24,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.calendar_month,
                              size: 12,
                              color: Colors.black45,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              '25 Agustus 2022',
                              style: GoogleFonts.poppins(
                                  fontSize: 8, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              size: 12,
                              color: Colors.black45,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              'Lapangan Sekolah',
                              style: GoogleFonts.poppins(
                                  fontSize: 8, fontWeight: FontWeight.w400),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 22,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffEDCC5D),
                        borderRadius: BorderRadius.circular(8.0)),
                    margin: const EdgeInsets.only(left: 33),
                    padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 13),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Olahraga \nSenam Pagi',
                          style: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              height: 1.2),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Seluruh kelas 7, 8 dan 9',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 7,
                              color: Colors.black54),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Image.asset(
                          'assets/images/senam.png',
                          width: 110,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 86),
                          child: Image.asset(
                            'assets/images/bunder.png',
                            width: 24,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.calendar_month,
                              size: 12,
                              color: Colors.black45,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              '18 Agustus 2022',
                              style: GoogleFonts.poppins(
                                  fontSize: 8, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              size: 12,
                              color: Colors.black45,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              'Halaman Sekolah',
                              style: GoogleFonts.poppins(
                                  fontSize: 8, fontWeight: FontWeight.w400),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffFF9790),
                        borderRadius: BorderRadius.circular(8.0)),
                    margin: const EdgeInsets.only(right: 33),
                    padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 13),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lomba \nKemerdekaan',
                          style: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              height: 1.2),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Seluruh kelas 7, 8 dan 9',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 7,
                              color: Colors.black54),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Image.asset(
                          'assets/images/merdeka.png',
                          width: 110,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 86),
                          child: Image.asset(
                            'assets/images/bunder.png',
                            width: 24,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.calendar_month,
                              size: 12,
                              color: Colors.black45,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              '17 Agustus 2022',
                              style: GoogleFonts.poppins(
                                  fontSize: 8, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              size: 12,
                              color: Colors.black45,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              'Halaman Sekolah',
                              style: GoogleFonts.poppins(
                                  fontSize: 8, fontWeight: FontWeight.w400),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ],
      ),
    );
  }
}
