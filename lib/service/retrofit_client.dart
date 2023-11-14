
import 'package:dio/dio.dart';
import 'package:flutter_project1/model/response/photo.dart';
import 'package:retrofit/retrofit.dart';
part 'retrofit_client.g.dart';

@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com')
abstract class RetrofitClient {
  factory RetrofitClient(Dio dio, {String baseUrl}) = _RetrofitClient;

  @GET('/photos')
  Future<List<Photo>> getPhotos();
}