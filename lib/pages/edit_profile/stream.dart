import 'package:aplikasi_si/pages/edit_profile/profile.dart';
import 'package:aplikasi_si/pages/edit_profile/sign_up_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class StreamPage extends StatelessWidget {
  const StreamPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasData) {
              return const ProfilePage();
            } else if (snapshot.hasError) {
              return const Center(
                child: Text('Something Went Wrong!'),
              );
            } else {
              return const SignUpPage();
            }
            ;
          },
        ),
      );
}
