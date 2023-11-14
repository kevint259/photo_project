// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'photo.g.dart';

@JsonSerializable()
class Photo {
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  const Photo({
    this.albumId = 1,
    this.id = 1,
    this.title = "hello",
    this.url = "hello",
    this.thumbnailUrl = "hello",}
  );

   factory Photo.fromJson(Map<String, dynamic> json) =>
      _$PhotoFromJson(json);
      
  Map<String, dynamic> toJson() => _$PhotoToJson(this);
  @override
  String toString() => toJson().toString();
}
