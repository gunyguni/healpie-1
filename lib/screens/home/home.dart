import 'package:flutter/material.dart';
import 'package:healpie_2/auth/auth.dart';
import 'package:healpie_2/screens/home/main_page.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: MainPage(),
        ),
      ),
    );
  }
}
