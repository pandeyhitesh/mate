import 'package:firebase_auth/firebase_auth.dart';
import 'package:mate/models/user_model.dart';

class AuthService{

  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create user object based on firebaseUser

  UserModel _userFromFirebaseUser(FirebaseUser user){
    return user != null ? UserModel(userId: user.uid) : null;
  }

  // auth change user stream
  Stream<UserModel> get user {
    return _auth.onAuthStateChanged
      // .map((FirebaseUser user) => _userFromFirebaseUser(user));
      .map(_userFromFirebaseUser);
  }

  //signin anon
  Future signInAnon()  async{
    try{
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);

    } catch(e){
      print(e.toString());
      return null;
    }
  }


  // sign in with email password
  Future signInWithEmailPassword(String email, String password) async {
    try{
      AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
    } catch(e){
      print('error signing up : ${e.toString}');
      return null;
    }
  }



  // register with email password
  Future registerWithEmailPassword(String email, String password) async{
    try{
      AuthResult result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
    } catch(e){
      print('error signing up : ${e.toString}');
      return null;
    }
  }

  //sign out
  Future signOut() async{
    try{
      return await _auth.signOut();
    } catch(e){
      print(e.toString());
      return null;
    }
  }


}