// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'dart:ffi';

// import 'package:aplikasi_si/bottom_navbar.dart';
// import 'package:aplikasi_si/pages/edit_profile/edit_profile_page.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:icons_plus/icons_plus.dart';

// import '../../theme/app_text_styles.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// GoogleSignIn _googleSignIn = GoogleSignIn(
//   scopes: [
//     'email',
//     'https://www.googleapis.com/auth/contacts.readonly',
//   ],
// );

// class _LoginPageState extends State<LoginPage> {
//   GoogleSignInAccount? _currentUser;
//   Future<void> _handleSignIn() async {
//     try {
//       await _googleSignIn.signIn();
//     } catch (error) {
//       print(error);
//     }
//   }

//   @override
//   void initState() {
//     _googleSignIn.onCurrentUserChanged.listen((event) {
//       setState(() {
//         _currentUser = event;
//       });
//     });
//     _googleSignIn.signInSilently();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xff083E8C),
//       body: _currentUser == null
//           ? Column(
//               children: [
//                 Container(
//                   padding: EdgeInsets.only(left: 24, right: 24, top: 24),
//                   decoration: const BoxDecoration(
//                       image: DecorationImage(
//                           image: AssetImage(
//                             "assets/images/loginbackground.png",
//                           ),
//                           fit: BoxFit.cover)),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       GestureDetector(
//                           onTap: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => BottomNavbar()));
//                           },
//                           child: Icon(Icons.arrow_back_ios)),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 10),
//                         child: Image.asset(
//                           'assets/images/loginvector.png',
//                         ),
//                       ),
//                       SizedBox(
//                         height: 144,
//                       )
//                     ],
//                   ),
//                 ),
//                 Column(
//                   children: [
//                     Text(
//                       'Selamat Datang di \nSMPIT DU',
//                       style: GoogleFonts.poppins(
//                           fontSize: 27,
//                           fontWeight: FontWeight.w700,
//                           color: Colors.white,
//                           height: 1.2,
//                           letterSpacing: 1.6),
//                       textAlign: TextAlign.center,
//                     ),
//                     SizedBox(
//                       height: 8,
//                     ),
//                     Text(
//                       'Gunakan live chat untuk \nmemulai obrolan dengan orang baru',
//                       style: GoogleFonts.poppins(
//                           fontSize: 12,
//                           fontWeight: FontWeight.w500,
//                           color: Colors.white60,
//                           letterSpacing: 0.4),
//                       textAlign: TextAlign.center,
//                     ),
//                     SizedBox(
//                       height: 28,
//                     ),
//                     ElevatedButton.icon(
//                         style: ElevatedButton.styleFrom(
//                             elevation: 0,
//                             backgroundColor: Colors.white,
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(8.0)),
//                             padding: EdgeInsets.symmetric(
//                                 horizontal: 56, vertical: 10)),
//                         onPressed: () => _handleSignIn(),
//                         icon: Logo(
//                           Logos.google,
//                           size: 20,
//                         ),
//                         label: Text(
//                           '   Signin Google',
//                           style: TextStyle(
//                               fontWeight: FontWeight.w500,
//                               fontSize: 14,
//                               color: Colors.black),
//                         )),
//                   ],
//                 )
//               ],
//             )
//           : ProfilePage(),
//     );
//   }
// }

// logoutfungsi() {
//   return GestureDetector(
//     onTap: () {
//       _googleSignIn.disconnect();
//     },
//     child: Row(
//       children: [
//         Container(
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(14.0),
//               color: const Color(0xffD1D1D1)),
//           padding: const EdgeInsets.all(9),
//           child: const Icon(
//             Icons.logout,
//             color: Colors.black,
//             size: 36,
//           ),
//         ),
//         const SizedBox(
//           width: 22,
//         ),
//         Text(
//           'Keluar',
//           style: AppTextStyle.appTitlew500s16(),
//         ),
//         const Spacer(),
//         const Icon(Icons.arrow_forward_ios)
//       ],
//     ),
//   );
// }
