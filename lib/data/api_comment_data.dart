import 'package:json_annotation/json_annotation.dart';
import 'comment_data.dart';
part 'api_comment_data.g.dart';

@JsonSerializable()
class CommentGetFromApi {
  List<Comment> comments;
  CommentGetFromApi({required this.comments});

  factory CommentGetFromApi.fromJson(Map<String, dynamic> json) =>
      _$CommentGetFromApiFromJson(json);
  Map<String, dynamic> toJson() => _$CommentGetFromApiToJson(this);
}