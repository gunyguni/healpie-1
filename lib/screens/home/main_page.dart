import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:healpie_2/auth/auth.dart';
import 'package:healpie_2/screens/home/box_slider.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final AuthService _auth = AuthService();
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 70.0,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.camera_alt,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.accessibility,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.pages,
            size: 30,
            color: Colors.white,
          ),
        ],
        color: Colors.black,
        buttonBackgroundColor: Colors.black,
        backgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
      body: Container(
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                RaisedButton(
                  child: Text('Go to login page'),
                  onPressed: () async {
                    await _auth.signOut();
                  },
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      '오늘의 Youtube 영상',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                BoxSlider(
                  width: 200,
                  height: 200,
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        '루틴',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                BoxSlider(
                  width: 220,
                  height: 240,
                )
              ],
            ),
          )),
    );
  }
}
