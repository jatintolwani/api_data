// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostGetFromApi _$PostGetFromApiFromJson(Map<String, dynamic> json) =>
    PostGetFromApi(
      posts: (json['posts'] as List<dynamic>)
          .map((e) => Post.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PostGetFromApiToJson(PostGetFromApi instance) =>
    <String, dynamic>{
      'posts': instance.posts,
    };
