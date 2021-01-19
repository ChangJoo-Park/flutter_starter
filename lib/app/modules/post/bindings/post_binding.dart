import 'package:flutter_getx_app_template/app/modules/post/providers/post_provider.dart';
import 'package:flutter_getx_app_template/app/modules/post/repositories/post_repositories.dart';
import 'package:get/get.dart';

import 'package:flutter_getx_app_template/app/modules/post/controllers/post_controller.dart';

class PostBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<PostProvider>(PostProvider());
    Get.put<PostRepository>(PostRepository());
    Get.put<PostController>(PostController());
  }
}
