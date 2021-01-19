import 'package:flutter_getx_app_template/app/modules/photos/photo_model.dart';
import 'package:flutter_getx_app_template/app/modules/photos/providers/photo_provider.dart';
import 'package:get/get.dart';

class PhotosRepository {
  static PhotosRepository get to => Get.find();

  Future<List<Photo>> getPhotos(int albumId) async {
    final response = await PhotoProvider.to.getPhotos(albumId);
    if (response.status.hasError) {
      return Future.error(response.statusText);
    } else {
      return response.body;
    }
  }
}
