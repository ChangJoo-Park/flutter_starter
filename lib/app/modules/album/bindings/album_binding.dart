import 'package:get/get.dart';

import 'package:flutter_getx_app_template/app/modules/album/controllers/album_controller.dart';

class AlbumBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AlbumController>(
      () => AlbumController(),
    );
  }
}
