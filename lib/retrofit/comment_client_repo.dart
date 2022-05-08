import 'package:dio/dio.dart';
import '../data/comment_data.dart';
import 'comment_client.dart';

final client = CommentApiClient(Dio(BaseOptions(contentType: 'application/json'),),);

class CommentFromRetrofit {
  Future<List<Comment>> fetchComment(int postId) async {
    final  result = await client.getComments(postId);
    return result;
  }
}