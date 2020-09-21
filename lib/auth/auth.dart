import 'package:firebase_auth/firebase_auth.dart';
import 'package:healpie_2/models/user_info.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create UserInfo object based on FirebaseUser
  TheUser _userFromFirebaseUser(User user) {
    return user != null ? TheUser(uid: user.uid) : null;
  }

  // auth change user stream
  Stream<User> get user {
    return _auth.authStateChanges().map(_userFromFirebaseUser);
  }

  // sign in anonymously (this service is not applied currently)
  Future signInAnonymous() async {
    try {
      UserCredential userCredential = await _auth.signInAnonymously();
      User user = userCredential.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
  // sign in with email & password

  // register with email & password

  // sign out

}
