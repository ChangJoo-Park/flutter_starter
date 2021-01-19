import 'package:flutter_getx_app_template/app/modules/photos/photo_model.dart';
import 'package:flutter_getx_app_template/app/modules/photos/repositories/photos_repository.dart';
import 'package:get/get.dart';

class PhotosController extends GetxController {
  final RxBool loaded = false.obs;
  RxList<Photo> list = RxList<Photo>([]);

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    final albumId = int.parse(Get.parameters['album']);

    PhotosRepository.to.getPhotos(albumId).then((value) {
      list.addAll(value);
      loaded.value = true;
    }).catchError((error) {});
    super.onReady();
  }

  @override
  void onClose() {}
}
