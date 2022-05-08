import 'package:flutter/material.dart';

import '../widgets/listview.dart';


class PostShow extends StatelessWidget {
  const PostShow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Posts"),
    ),
  body: ListViewPost(),
    );
  }
}
