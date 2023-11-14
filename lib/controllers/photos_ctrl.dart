
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project1/model/response/photo.dart';
import 'package:flutter_project1/service/retrofit_client.dart';
import 'package:rxdart/rxdart.dart';

class PhotosCtrl {  
  final BehaviorSubject<List<Photo>> photos = BehaviorSubject.seeded([const Photo()]);
  static PhotosCtrl? _instance;

  factory PhotosCtrl() => _instance ??= PhotosCtrl.zero();
  PhotosCtrl.zero() {
    debugPrint('PhotosCtrl.zero!');
    init();
  }

  void init() {
    getPhotos();
  }

  Future<void> getPhotos() async {
    try {
      final apiService = RetrofitClient(Dio(BaseOptions(contentType: 'application/json')));
      final resp = await apiService.getPhotos();
      photos.add(resp);
    } catch (e) {
      return Future.error(e);
    }
  }

  void dispose() {
    photos.close();
  }
}