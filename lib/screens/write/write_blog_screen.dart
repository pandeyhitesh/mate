import 'package:flutter/material.dart';
import 'package:mate/constants/textStyle.dart';
import 'package:mate/widgets/bottomNavBar_widget.dart';

class WriteScreen extends StatefulWidget {
  @override
  _WriteScreenState createState() => _WriteScreenState();
}

class _WriteScreenState extends State<WriteScreen> {
  final int screenId = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Writer',style: textStyle2,),
      ),
      body: Center(
        child: Text('writer'),
      ),
//      bottomNavigationBar: bottomNavBar(context, screenId),
    );
  }
}
