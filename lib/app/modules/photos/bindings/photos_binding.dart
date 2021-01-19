import 'package:flutter_getx_app_template/app/modules/photos/providers/photo_provider.dart';
import 'package:flutter_getx_app_template/app/modules/photos/repositories/photos_repository.dart';
import 'package:get/get.dart';

import 'package:flutter_getx_app_template/app/modules/photos/controllers/photos_controller.dart';

class PhotosBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PhotosController>(
      () => PhotosController(),
    );
    Get.put<PhotoProvider>(PhotoProvider());
    Get.put<PhotosRepository>(PhotosRepository());
  }
}
