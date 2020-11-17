import 'package:flutter/material.dart';
import 'package:mate/models/user_model.dart';
import 'package:mate/screens/authenticate/authenticate.dart';
import 'package:mate/screens/screenController.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    final user = Provider.of<UserModel>(context);
    print(user);

    // retrun either screen controller or authenticate
    if ( user == null){
      return AuthenticateScreen();
    } else {
      return ScreenController();
    }
  }
}