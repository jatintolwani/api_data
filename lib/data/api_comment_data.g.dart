// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_comment_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommentGetFromApi _$CommentGetFromApiFromJson(Map<String, dynamic> json) =>
    CommentGetFromApi(
      comments: (json['comments'] as List<dynamic>)
          .map((e) => Comment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CommentGetFromApiToJson(CommentGetFromApi instance) =>
    <String, dynamic>{
      'comments': instance.comments,
    };
