import 'package:flutter_getx_app_template/app/modules/post/providers/post_provider.dart';
import 'package:flutter_getx_app_template/app/modules/posts/post_model.dart';
import 'package:get/get.dart';

class PostRepository {
  static PostRepository get to => Get.find();

  Future<Post> getPost(int postId) async {
    final response = await PostProvider.to.getPost(postId);
    if (response.status.hasError) {
      return Future.error(response.statusText);
    } else {
      return response.body;
    }
  }
}
