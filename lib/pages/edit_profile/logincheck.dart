// // ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings

// import 'package:aplikasi_si/pages/edit_profile/loginuser.dart';
// import 'package:aplikasi_si/pages/page.dart';
// import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// class LoginCheckPage extends StatefulWidget {
//   const LoginCheckPage({super.key});

//   @override
//   State<LoginCheckPage> createState() => _LoginCheckPageState();
// }

// class _LoginCheckPageState extends State<LoginCheckPage> {
//   final GoogleSignIn _googleSignIn = GoogleSignIn();

//   @override
//   void initState() {
//     super.initState();

//     _checkLoginStatus();
//   }

//   void _checkLoginStatus() {
//     print('ERROR COK' + _googleSignIn.toString());

//     if (_googleSignIn.currentUser != null) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => ProfilePage(),
//         ),
//       );
//     } else {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => LoginPage(),
//         ),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: CircularProgressIndicator(),
//       ),
//     );
//   }
// }
