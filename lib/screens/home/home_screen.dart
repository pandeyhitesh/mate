import 'package:flutter/material.dart';
import 'package:mate/constants/blog_data.dart';
import 'package:mate/constants/colors.dart';
import 'package:mate/constants/textStyle.dart';
import 'package:mate/models/blog_model.dart';
import 'package:mate/screens/home/user_profile_screen.dart';
import 'package:mate/services/auth.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final AuthService _authService = AuthService();

  final int screenId = 1;

  // List<BlogModel> blogs = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mate', style: textStyle2,),
        actions: [
          FlatButton.icon(
            onPressed: () async {
              await _authService.signOut();
            },
            icon: Icon(Icons.person),
            label: Text("Logout"),
          ),
        ],
      ),
//      bottomNavigationBar: bottomNavBar(context, screenId),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height - 150,
            width: double.infinity,
            child: ListView.builder(
              itemCount: blogs.length,
              itemBuilder: (context, index) {
                return Card(
                  color: white,
                  elevation: 5,
                  shadowColor: Colors.grey[300],
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        displayImageAndName(blogs[index]),
                        displayBlogContent(blogs[index]),
                        displayLikeAndComment(blogs[index]),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  //display profile image and name
  Widget displayImageAndName(BlogModel blog) {
    return GestureDetector(
      onTap: () {
        print('profile');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UserProfileScreen(),
          ),
        );
      },
      child: Container(
        // padding: EdgeInsets.all(10.0),
        child: Row(
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
      ),
    );
  }

  //Display the blog content
  Widget displayBlogContent(BlogModel blog) {
    return GestureDetector(
      onTap: () {
        print('post');
      },
      child: Container(
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.only(top: 5),
        child: Text(
          blog.content,
          style: contentTextStyleSmall,
          // maxLines: 3,
        ),
      ),
    );
  }

  //diplay likes and comment button
  Widget displayLikeAndComment(BlogModel blog) {
    return Container(
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
    );
  }
}
