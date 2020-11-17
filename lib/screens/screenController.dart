import 'package:flutter/material.dart';
import 'package:mate/constants/colors.dart';
import 'package:mate/screens/profile/profile_screen.dart';
import 'package:mate/screens/write/write_blog_screen.dart';
import 'package:mate/widgets/bottomNavBar_widget.dart';

import 'home/home_screen.dart';

class ScreenController extends StatefulWidget {
  @override
  _ScreenControllerState createState() => _ScreenControllerState();
}

class _ScreenControllerState extends State<ScreenController> {
  int _currentIndex = 0;

  List<Widget> displayScreen = [
    HomeScreen(),
    WriteScreen(),
    ProfileScreen(),
  ];

  Widget currentScreen = HomeScreen();

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              backgroundColor: themeColor2),
          BottomNavigationBarItem(
              icon: Icon(Icons.create),
              title: Text('Write'),
              backgroundColor: themeColor2),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile'),
              backgroundColor: themeColor2),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            currentScreen = displayScreen[index];
          });
          print(currentScreen);
        },
        elevation: 5,
        selectedItemColor: themeColor5,
        unselectedItemColor: themeColor6,
        backgroundColor: themeColor2,
        iconSize: 20,
        selectedLabelStyle: TextStyle(
          fontFamily: 'mulish',
          fontSize: 14,
        ),
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(size: 20),
      ),
    );
  }
}
