import 'package:flutter/cupertino.dart';

class CommentModel{
  String postId;
  String userName;
  Image userImage;
  String comment;

  CommentModel({this.postId, this.userName, this.userImage, this.comment});
}