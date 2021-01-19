import 'package:get/get.dart';

import 'package:flutter_getx_app_template/app/modules/photos/photo_model.dart';

class PhotoProvider extends GetConnect {
  static PhotoProvider get to => Get.find();

  @override
  void onInit() {
    httpClient.defaultDecoder = (map) => Photo.fromJson(map);
    httpClient.baseUrl = 'https://jsonplaceholder.typicode.com/';
  }

  Future<Response<List<Photo>>> getPhotos(int albumId) async =>
      await get('photos?albumId=$albumId',
          decoder: (body) =>
              body.map<Photo>((item) => Photo.fromJson(item)).toList());
  Future<Response<Photo>> getPhoto(int id) async => await get('photos/$id');
  Future<Response<Photo>> postPhoto(Photo photo) async =>
      await post('photo', photo);
  Future<Response> deletePhoto(int id) async => await delete('photos/$id');
}
