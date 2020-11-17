import 'package:flutter/material.dart';
import 'package:mate/constants/loading.dart';
import 'package:mate/services/auth.dart';

class SignIn extends StatefulWidget {

  final Function toggleView;
  SignIn({this.toggleView});
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  
  // object of the AuthService
  final AuthService _authService = AuthService();

  // global FormKey
  final _formKey = GlobalKey<FormState>();

  // state loading 
  bool isLoading = false;

  //text Field state
  String email = '';
  String password = '';

  String error = '';

  @override
  Widget build(BuildContext context) {
    return isLoading ? LoadingScreen() : Scaffold(
      appBar: AppBar(
        title: Text('SignIn'),
      ),
      body: Container(
        padding: EdgeInsets.all(40.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(height: 20.0),
              TextFormField(
                validator: (value) => value.isEmpty ? 'Enter Email' : null,
                onChanged: (value) {
                  setState(() {
                    email = value;
                  });
                },
              ),
              SizedBox(height: 20.0),
              TextFormField(
                validator: (value) => value.length < 6 ? 'Enter a password of lenth +6 chars' : null,
                onChanged: (value) {
                  setState(() {
                    password = value;
                  });
                },
                obscureText: true,
              ),
              SizedBox(height: 20.0),
              RaisedButton(
                onPressed: () async {
                  if (_formKey.currentState.validate()){
                    setState(() => isLoading = true);
                    dynamic result = await _authService.signInWithEmailPassword(email, password);
                    if(result == null){
                      setState(() {
                        error = 'Please supply a valid Email and Password.';
                        isLoading = false;
                      });
                    }
                  }
                },
                child: Text(
                  'Sign In',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 20.0),
              RaisedButton(
                onPressed: () {
                  widget.toggleView();
                },
                child: Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 10.0),
              Text(error),
            ],
          ),
        ),
      ),
    );
  }
}
