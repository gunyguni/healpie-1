import 'package:flutter/material.dart';
import 'package:healpie_2/auth/auth.dart';
import 'package:healpie_2/screens/authenticate/register.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 60.0),
            Column(
              children: <Widget>[
                Image.asset('assets/workout.jpg'),
                SizedBox(
                  height: 16.0,
                ),
                Text(
                  'H E A L P Y',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 60.0,
            ),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                filled: true,
                labelText: 'Username',
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            TextField(
              controller: _passwordController,
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
                  child: Text('회원가입'),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return Register();
                      }),
                    );
                  },
                ),
                RaisedButton(
                  color: Colors.amber[100],
                  child: Text('Login'),
                  onPressed: () async {
                    dynamic result = await _auth.signInAnonymous();
                    if (result == null) {
                      print('Error signing in');
                      _passwordController.clear();
                    } else {
                      print('signed in');
                      print(result.uid);
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
