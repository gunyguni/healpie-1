import 'package:flutter/material.dart';
import 'package:healpie_2/models/user_info.dart';
import 'package:healpie_2/screens/authenticate/authenticate.dart';
import 'package:healpie_2/screens/home/home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //return either Home or Authenticate widget depending on AuthService.user stream
    final user = Provider.of<TheUser>(context);

    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
