import 'package:flutter/material.dart';
import 'package:healpie_2/screens/wrapper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "helpy",
      home: Wrapper(),
    );
  }
}
