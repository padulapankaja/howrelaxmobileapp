import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutterapp/models/usermodal.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;



//  create user object in firebase
  UserModal _userfromFirebaseUser(FirebaseUser user){
    return user != null ? UserModal(uid : user.uid) : null;
  }


//  sign in anon
  Future signInAnon() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return _userfromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

//sing in with email and pw

}
