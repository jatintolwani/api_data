import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../data/comment_data.dart';

part 'comment_client.g.dart';

class CommentApis {
  static const String comment = '/posts/{id}/comments';
}

@RestApi(baseUrl: "https://jsonplaceholder.typicode.com")
abstract class CommentApiClient {
  factory CommentApiClient(Dio dio, {String? baseUrl}) {
    dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
    return _CommentApiClient(dio, baseUrl: baseUrl);
  }

  @GET(CommentApis.comment)
  Future <List<Comment>> getComments(@Path("id") int postID);
}
