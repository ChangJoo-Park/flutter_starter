import 'package:flutter_getx_app_template/app/modules/posts/post_model.dart';
import 'package:flutter_getx_app_template/app/modules/posts/repositories/posts_repositories.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

class PostsController extends GetxController {
  final logger = Logger(printer: PrettyPrinter());
  final list = <Post>[].obs;
  final RxBool loaded = false.obs;
  final PostsRepository postRepository;

  PostsController({this.postRepository});

  @override
  void onInit() {
    super.onInit();
    postRepository.getPosts().then((data) {
      list.clear();
      list.addAll(data);
      loaded.value = true;
    }, onError: (err) {}).whenComplete(() {});
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
