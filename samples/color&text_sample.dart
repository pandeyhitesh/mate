import 'package:flutter/material.dart';
import 'package:mate/constants/textStyle.dart';
import 'package:mate/constants/colors.dart';
class ColorAndTextSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Blogger'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: 100,
                width: double.infinity,
                color: themeColor1,
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: themeColor2,
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: themeColor3,
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: themeColor4,
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: themeColor5,
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: themeColor6,
              ),
              Container(
                height: 100,
                width: double.infinity,
                child: Center(
                  child: Text(
                    'Hello world. welcome to blog.',
                    style: textStyle1,
                  ),
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                child: Center(
                  child: Text(
                    'Hello world. welcome to blog.',
                    style: textStyle2,
                  ),
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                child: Center(
                  child: Text(
                    'Hello world. welcome to blog.',
                    style: textStyle3,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
