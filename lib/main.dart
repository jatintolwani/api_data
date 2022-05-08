import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'routes/route_identifier.dart';
import 'routes/routes.dart';
import 'store/comment_store.dart';
import 'store/database_update.dart';
import 'store/post_store.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<PostStore>(
          create: (context) => PostStore(),
        ),
        Provider<CommentStore>(
          create: (context) => CommentStore(),
        ),
        Provider<UpdateDatabase>(
          create: (context) => UpdateDatabase(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: RouteIdentifier.home,
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
