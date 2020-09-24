import 'package:flutter/material.dart';
import 'package:healpie_2/auth/auth.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: RaisedButton(
            child: Text('Log out'),
            onPressed: () async {
              await _auth.signOut();
            },
          ),
        ),
      ),
    );
  }
}
