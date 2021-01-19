import 'package:flutter_getx_app_template/app/modules/album/providers/album_provider.dart';
import 'package:flutter_getx_app_template/app/modules/album/repositories/album_reposittory.dart';
import 'package:get/get.dart';

import 'package:flutter_getx_app_template/app/modules/album/controllers/album_controller.dart';

class AlbumBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<AlbumProvider>(AlbumProvider());
    Get.put<AlbumRepository>(AlbumRepository());
    Get.lazyPut<AlbumController>(() => AlbumController());
  }
}
