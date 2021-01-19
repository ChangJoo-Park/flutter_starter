import 'package:flutter_getx_app_template/app/modules/album/album_model.dart';
import 'package:flutter_getx_app_template/app/modules/album/repositories/album_reposittory.dart';
import 'package:get/get.dart';

class AlbumController extends GetxController {
  final count = 0.obs;
  RxBool loaded = false.obs;
  RxList<Album> list = RxList<Album>([]);
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    AlbumRepository.to.getAlbums().then((List<Album> data) {
      list.clear();
      list.addAll(data);
      loaded.value = true;
    });
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
