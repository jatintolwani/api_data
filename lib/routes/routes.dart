import 'package:flutter/material.dart';

import '../screens/comment_screen.dart';
import '../screens/editscreen.dart';
import '../screens/post.dart';
import 'route_identifier.dart';


class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case RouteIdentifier.home:
        return MaterialPageRoute(
          builder: (_) => PostShow(),
        );
      case RouteIdentifier.commentscreen:
        int id = 0;
        if (args is int) {
          id = args;
        }
        return MaterialPageRoute(
          builder: (_) => CommentScreen(
            postId: id,
          ),
        );
    }

    return MaterialPageRoute(builder: (_) => EditScreen());
  }
}
