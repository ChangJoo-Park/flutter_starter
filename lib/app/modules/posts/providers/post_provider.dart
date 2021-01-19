import 'package:get/get.dart';

import 'package:flutter_getx_app_template/app/modules/posts/post_model.dart';

class PostsProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) => Post.fromJson(map);
    httpClient.baseUrl = 'https://jsonplaceholder.typicode.com';
  }

  Future<Response<List<Post>>> getPosts() async {
    return await get('https://jsonplaceholder.typicode.com/posts',
        decoder: (body) =>
            body.map<Post>((item) => Post.fromJson(item)).toList());
  }
}
