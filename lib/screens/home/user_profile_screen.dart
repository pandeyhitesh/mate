import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mate/constants/colors.dart';
import 'package:mate/constants/textStyle.dart';
import 'package:mate/models/blog_model.dart';
import 'package:mate/constants/blog_data.dart';

class UserProfileScreen extends StatefulWidget {
  @override
  _UserProfileScreenState createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  final int screenId = 3;

  bool isLiked = false;
  int posts = 23;
  int acknows = 45;

  //Static data
  String name = 'Merry Jane';
  String place = 'California';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name, style: textStyle2,),
      ),
//      bottomNavigationBar: bottomNavBar(context, screenId),
      body: SingleChildScrollView(
        child: Container(
          // height: MediaQuery.of(context).size.height + 300,
          width: double.infinity,
          color: white,
          padding: EdgeInsets.all(0),
          child: Column(
            children: [
              SizedBox(
                height: 80.0,
              ),
              profilePhoto(),
              displayNameAndLocation(context),
              displayTagLine(context),
              displayPostsAndAcknows(context),
              displaySocialLinks(context),
              SizedBox(
                height: 20,
              ),
              displayPosts(context),
            ],
          ),
        ),
      ),
    );
  }

  //diplay the profile image
  Widget profilePhoto() {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      height: 140,
      width: 140,
      decoration: BoxDecoration(
          color: themeColor2,
          borderRadius: BorderRadius.circular(35.0),
          border: Border.all(
            color: themeColor1,
            width: 3.0,
          ),
          boxShadow: [
            BoxShadow(blurRadius: 20.0, color: themeColor3, spreadRadius: 3)
          ]),
    );
  }

//display cover image
  Widget coverImage() {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/cover.jpg'), fit: BoxFit.cover),
      ),
    );
  }

// main body container
// Widget bodyContainer(BuildContext context) {
// String name = 'Merry Jane';
// String place = 'California';

//   return Container(
//     height: MediaQuery.of(context).size.height,
//     width: MediaQuery.of(context).size.width,
//     decoration: BoxDecoration(
//       color: themeColor3,
//       borderRadius: BorderRadius.only(
//         topLeft: Radius.circular(30.0),
//         topRight: Radius.circular(30.0),
//       ),
//     ),
//     child:
//   );
// }

// display name and location
  Widget displayNameAndLocation(BuildContext context) {
    String name = 'Merry Jane';
    String place = 'California';
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            // height: 50,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Center(
              child: Text(
                name,
                style: headerNametextStyle,
              ),
            )),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
          // height: 50,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on,
                size: 16.0,
                color: themeColor2,
              ),
              SizedBox(
                width: 5.0,
              ),
              Center(
                child: Text(
                  place,
                  style: textStyle3.copyWith(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

//display tagline
  Widget displayTagLine(BuildContext context) {
    String tagLine = 'UI UX Designer';
    return Container(
      padding: EdgeInsets.all(5),
      child: Center(
          child: Text(
        tagLine,
        style: labelTextStyle1.copyWith(fontWeight: FontWeight.w500),
      )),
    );
  }

// display Posts And Acknows
  Widget displayPostsAndAcknows(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FlatButton(
            onPressed: () {},
            child: Container(
              height: 60.0,
              width: 78.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    posts.toString(),
                    style: buttonTextStyleSmall,
                  ),
                  SizedBox(height: 5.0),
                  Text('Posts', style: buttonTextStyleSmall),
                ],
              ),
            ),
          ),
          SizedBox(width: 10.0),
          IconButton(
              icon: Icon(
                Icons.thumb_up,
                // color: isLiked ? themeColor5 : themeColor2,
              ),
              color: isLiked ? Colors.yellowAccent[700] : themeColor2,
              onPressed: () {
                print('acknowned. $isLiked');
                setState(() {
                  isLiked = !isLiked;
                  if (isLiked) {
                    acknows += 1;
                  } else {
                    acknows -= 1;
                  }
                });
                print('acknowned. $isLiked');
              }),
          SizedBox(width: 10.0),
          FlatButton(
            onPressed: () {},
            child: Container(
              height: 60.0,
              width: 78.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    acknows.toString(),
                    style: buttonTextStyleSmall,
                  ),
                  SizedBox(height: 5.0),
                  Text('Acknows', style: buttonTextStyleSmall),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

//display social Links
  Widget displaySocialLinks(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      width: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              print('helolo');
            },
            child: Container(
              padding: EdgeInsets.only(top: 5),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5, color: themeColor3, spreadRadius: 1)
                  ]),
              child: Center(
                  child: Text(
                'f',
                style: fbTextStyle,
              )),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 0),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 5, color: themeColor3, spreadRadius: 1)
                ]),
            child: Center(
                child: Text(
              'ig',
              style: fbTextStyle.copyWith(color: Colors.purple),
            )),
          ),
          Container(
            // padding: EdgeInsets.only(top: 5),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 5, color: themeColor3, spreadRadius: 1)
                ]),
            child: Icon(Icons.message, color: Colors.blueAccent,),
          ),
          Container(
            padding: EdgeInsets.only(top: 5),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 5, color: themeColor3, spreadRadius: 1)
                ]),
            child: Center(
                child: Text(
              'in',
              style: fbTextStyle.copyWith(color: Colors.blue[900]),
            )),
          ),
        ],
      ),
    );
  }

  Widget displayPosts(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                height: 2.0,
                width: double.infinity,
                color: themeColor2,
              ),
              Container(
                color: themeColor5,
                height: 50.0,
                // width: 100.0,
                child: Center(
                  child: Text(
                    'Posts',
                    style: textStyle2,
                  ),
                ),
              ),
              Container(
                height: 2.0,
                width: double.infinity,
                color: themeColor2,
              ),
              ],
            ),
          ),
          Container(
            height: blogs.length*210.toDouble(),
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: blogs.length,
              itemBuilder: (context, index) {
                return postContainer(context, blogs[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

//display posts
  Widget postContainer(BuildContext context, BlogModel blog) {
    return Container(
      height: 190,
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(blurRadius: 10, color: themeColor3, spreadRadius: 2),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 40,
                width: 40,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    'assets/profile_image.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      blog.username,
                      style: labelTextStyle1,
                    ),
                    Text(
                      blog.postDate.toString(),
                      style: labelTextStyle1.copyWith(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text(
              blog.content,
              style: contentTextStyleSmall,
              maxLines: 3,
            ),
          ),
          Container(
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  onPressed: () => print('Liked'),
                ),
                Text(blog.likes.toString()),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  icon: Icon(Icons.comment),
                  onPressed: () => print('Comment'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
