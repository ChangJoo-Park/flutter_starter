import 'package:get/get.dart';

import 'package:flutter_getx_app_template/app/modules/album/album_model.dart';

class AlbumProvider extends GetConnect {
  static AlbumProvider get to => Get.find();

  @override
  void onInit() {
    httpClient.defaultDecoder = (map) => Album.fromJson(map);
    httpClient.baseUrl = 'https://jsonplaceholder.typicode.com/';
  }

  Future<Response<List<Album>>> getAlbums() async => await get('albums/',
      decoder: (body) =>
          body.map<Album>((item) => Album.fromJson(item)).toList());

  Future<Response<Album>> getAlbum(int id) async => await get('album/$id');
  Future<Response<Album>> postAlbum(Album album) async =>
      await post('album', album);
  Future<Response> deleteAlbum(int id) async => await delete('album/$id');
}
