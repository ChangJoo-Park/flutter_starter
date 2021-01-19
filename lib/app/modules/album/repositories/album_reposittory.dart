import 'package:flutter_getx_app_template/app/modules/album/album_model.dart';
import 'package:flutter_getx_app_template/app/modules/album/providers/album_provider.dart';
import 'package:get/get.dart';

class AlbumRepository {
  static AlbumRepository get to => Get.find();

  Future<List<Album>> getAlbums() async {
    final response = await AlbumProvider.to.getAlbums();
    if (response.status.hasError) {
      return Future.error(response.statusText);
    } else {
      return response.body;
    }
  }
}
