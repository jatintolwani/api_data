import 'package:flutter/material.dart';

import '../widgets/comment_listview.dart';

class CommentScreen extends StatelessWidget {
  final int postId;

  const CommentScreen({Key? key, required this.postId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommentListView(
        id: postId,
      ),
    );
  }
}
