import 'package:cse_project/auth/login_or_register.dart';

import 'package:cse_project/pages/homePage.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          //if (snapshot.connectionState == ConnectionState.waiting) {
          //  return const Center(child: CircularProgressIndicator());
          //}

          //user is logged in
          if (snapshot.hasData) {
            return const HomeScreen();
          }
          //not logged in
          else {
            return const LoginOrRegister();
          }
        },
      ),
    );
  }
}
