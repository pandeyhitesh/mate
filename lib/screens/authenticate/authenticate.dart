import 'package:flutter/material.dart';
import 'package:mate/screens/authenticate/register.dart';
import 'package:mate/screens/authenticate/signin.dart';

class AuthenticateScreen extends StatefulWidget {
  @override
  _AuthenticateScreenState createState() => _AuthenticateScreenState();
}

class _AuthenticateScreenState extends State<AuthenticateScreen> {

  bool showSignIn = true;

  void toggleView(){
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn){
      return SignIn(toggleView: toggleView);
    } else{
      return Register(toggleView: toggleView);
    }
  }
}