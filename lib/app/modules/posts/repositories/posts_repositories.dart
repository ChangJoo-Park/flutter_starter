import 'package:flutter_getx_app_template/app/modules/posts/post_model.dart';
import 'package:flutter_getx_app_template/app/modules/posts/providers/post_provider.dart';

class PostsRepository {
  PostsRepository({this.provider});
  final PostsProvider provider;

  Future<List<Post>> getPosts() async {
    final response = await provider.getPosts();
    if (response.status.hasError) {
      return Future.error(response.statusText);
    } else {
      return response.body;
    }
  }
}
