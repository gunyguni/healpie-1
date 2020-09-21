import 'package:flutter/material.dart';
import 'package:healpie_2/screens/authenticate/authenticate.dart';
import 'package:healpie_2/screens/home/home.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //return either Home or Authenticate widget
    return Home();
  }
}
