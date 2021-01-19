import 'package:flutter_getx_app_template/app/modules/posts/post_model.dart';
import 'package:get/get.dart';

class PostProvider extends GetConnect {
  static PostProvider get to => Get.find();

  @override
  void onInit() {
    print('on init');
    httpClient.defaultDecoder = (map) => Post.fromJson(map);
    httpClient.baseUrl = 'https://jsonplaceholder.typicode.com';
  }

  Future<Response<Post>> getPost(int id) async => await get('/posts/$id');
  Future<Response<Post>> postPost(Post postItem) async =>
      await post('/posts', postItem);
  Future<Response> deletePost(int id) async => await delete('/posts/$id');
}
