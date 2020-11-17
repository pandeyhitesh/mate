import 'package:flutter/material.dart';
import 'package:mate/constants/colors.dart';
import 'package:mate/constants/textStyle.dart';
import 'package:mate/models/blog_model.dart';
import 'package:mate/models/comment_model.dart';

class PostDetails extends StatefulWidget {
  @override
  _PostDetailsState createState() => _PostDetailsState();
}

class _PostDetailsState extends State<PostDetails> {

  BlogModel blog = BlogModel();
  List<CommentModel> comments = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post', style: textStyle2,),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  color: Colors.grey[300],
                  spreadRadius: 5,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                displayImageAndName(blog),
                displayBlogContent(blog),
                displayLikeAndComment(blog),
                displayComments(comments),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //display profile image and name
  Widget displayImageAndName(BlogModel blog) {
    return Row(
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
    );
  }

  //Display the blog content
  Widget displayBlogContent(BlogModel blog) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Text(
        blog.content,
        style: contentTextStyleSmall,
        // maxLines: 3,
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

  //display comments
  Widget displayComments(List<CommentModel> comments) {
    return Container(
      child: ListView.builder(
        itemCount: comments.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: comments[index].userImage,
            ),
            title: Text(comments[index].userName),
            subtitle: Text(comments[index].comment),
          );
        },
      ),
    );
  }
}
