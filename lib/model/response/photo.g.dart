// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Photo _$PhotoFromJson(Map<String, dynamic> json) => Photo(
      albumId: json['albumId'] as int? ?? 1,
      id: json['id'] as int? ?? 1,
      title: json['title'] as String? ?? "hello",
      url: json['url'] as String? ?? "hello",
      thumbnailUrl: json['thumbnailUrl'] as String? ?? "hello",
    );

Map<String, dynamic> _$PhotoToJson(Photo instance) => <String, dynamic>{
      'albumId': instance.albumId,
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
      'thumbnailUrl': instance.thumbnailUrl,
    };
