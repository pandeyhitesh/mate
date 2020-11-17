import 'package:flutter/material.dart';
import 'package:mate/constants/colors.dart';
import 'package:mate/models/user_model.dart';
import 'package:mate/screens/home/home_screen.dart';
import 'package:mate/screens/profile/profile_screen.dart';
import 'package:mate/screens/screenController.dart';
import 'package:mate/screens/wrapper.dart';
import 'package:mate/screens/write/write_blog_screen.dart';
import 'package:mate/services/auth.dart';
import 'package:provider/provider.dart';

import 'constants/color&text_sample.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserModel>.value(
      value: AuthService().user,
      child: MaterialApp(
        title: 'Flutter Blog App',
        theme: theme,
        home: Wrapper(),
        routes: {
          'home': (context) => HomeScreen(),
          'write': (context) => WriteScreen(),
          'profile': (context) => ProfileScreen(),
        },
      ),
    );
  }
}
