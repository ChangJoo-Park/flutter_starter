import 'package:flutter/material.dart';
import 'package:flutter_getx_app_template/app/modules/posts/post_model.dart';
import 'package:flutter_getx_app_template/app/modules/posts/providers/post_provider.dart';
import 'package:flutter_getx_app_template/app/modules/posts/repositories/posts_repositories.dart';

import 'package:get/get.dart';

import 'package:flutter_getx_app_template/app/modules/posts/controllers/posts_controller.dart';

class PostsView extends GetView<PostsController> {
  @override
  Widget build(BuildContext context) {
    Get.put(PostsController(
        postRepository: PostsRepository(provider: PostsProvider())));

    return Scaffold(
      appBar: AppBar(
        title: Text('PostsView'),
        automaticallyImplyLeading: false,
        centerTitle: false,
      ),
      body: Obx(() => controller.loaded.value
          ? ListView.builder(
              itemCount: controller.list.length,
              itemBuilder: (BuildContext context, int index) {
                Post post = controller.list[index];
                return ListTile(
                  key: ValueKey('post_item_${post.id}'),
                  title: Text(post.title),
                  onTap: () {
                    Get.toNamed('/post/${post.id}');
                  },
                );
              },
            )
          : Center(child: CircularProgressIndicator())),
    );
  }
}
