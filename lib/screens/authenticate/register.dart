import 'package:flutter/material.dart';
import 'package:healpie_2/auth/auth.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

// register screen with slide up animation
class _RegisterState extends State<Register>
    with SingleTickerProviderStateMixin {
  final AuthService _auth = AuthService();
  final _passwordController = TextEditingController();

  //animation controller instance to create animation
  AnimationController _animationController;

  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 150));
    _animationController.forward();
    super.initState();
  }

  //deallocating animation resources after use
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            FadeTransition(
              opacity: _animationController,
            ),
            SizedBox(height: 60.0),
            Column(
              children: <Widget>[
                Text(
                  '회원 가입',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                Image.asset('assets/workout.jpg'),
                SizedBox(
                  height: 16.0,
                ),
              ],
            ),
            SizedBox(
              height: 60.0,
            ),
            TextField(
              decoration: InputDecoration(
                filled: true,
                labelText: 'Username',
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            TextField(
              decoration: InputDecoration(
                filled: true,
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FlatButton(
                  child: Text('취소'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                RaisedButton(
                  color: Colors.amber[100],
                  child: Text('회원 가입'),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
