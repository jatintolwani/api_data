
import 'package:dio/dio.dart';
import '../data/api_data.dart';
import '../data/data.dart';
import 'client.dart';

final client = ApiClient(Dio(BaseOptions(contentType: 'application/json'),),);

class PostFromRetrofit {
  Future<List<Post>> fetchPost() async {
    final  result = await client.getPost();
    return result;
  }
}