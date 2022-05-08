import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../data/data.dart';

part 'client.g.dart';

class Apis {
  static const String post = '/posts/';
}

@RestApi(baseUrl: "https://jsonplaceholder.typicode.com")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String? baseUrl}) {
    dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
    return _ApiClient(dio, baseUrl: baseUrl);
  }

  @GET(Apis.post)
  Future<List<Post>> getPost();
}


