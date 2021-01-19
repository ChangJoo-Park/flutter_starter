import 'package:flutter_getx_app_template/app/modules/post/providers/post_provider.dart';
import 'package:flutter_getx_app_template/app/modules/post/repositories/post_repositories.dart';
import 'package:flutter_getx_app_template/app/modules/posts/post_model.dart';
import 'package:get/get.dart';

class PostController extends GetxController {
  static PostController get to => Get.find();
  Rx<Post> post = Rx<Post>();
  final RxBool loaded = false.obs;
  @override
  void onInit() {
    print('on init post controller');
    super.onInit();
  }

  @override
  void onReady() {
    int postId = int.parse(Get.parameters['post']);
    PostRepository.to.getPost(postId).then((Post postItem) {
      post.value = postItem;
      loaded.value = true;
    });
    super.onReady();
  }

  @override
  void onClose() {}
}
