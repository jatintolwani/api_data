import 'package:json_annotation/json_annotation.dart';
import 'data.dart';
part 'api_data.g.dart';

@JsonSerializable()
class PostGetFromApi {
  List<Post> posts;
  PostGetFromApi({required this.posts});

  factory PostGetFromApi.fromJson(Map<String, dynamic> json) =>
      _$PostGetFromApiFromJson(json);
  Map<String, dynamic> toJson() => _$PostGetFromApiToJson(this);
}