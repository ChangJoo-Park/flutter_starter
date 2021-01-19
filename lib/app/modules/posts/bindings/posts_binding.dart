import 'package:flutter_getx_app_template/app/modules/posts/providers/post_provider.dart';
import 'package:flutter_getx_app_template/app/modules/posts/repositories/posts_repositories.dart';
import 'package:get/get.dart';

import 'package:flutter_getx_app_template/app/modules/posts/controllers/posts_controller.dart';

class PostsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PostsController>(() => PostsController());
    Get.lazyPut<PostsProvider>(() => PostsProvider());
    Get.lazyPut<PostsRepository>(() => PostsRepository(provider: Get.find()));
  }
}
