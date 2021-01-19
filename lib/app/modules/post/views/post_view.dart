import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:flutter_getx_app_template/app/modules/post/controllers/post_controller.dart';

class PostView extends GetView<PostController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PostView'),
        centerTitle: true,
      ),
      body: Obx(
        () => controller.loaded.value
            ? Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
                      child: Text(
                        controller.post.value.title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        controller.post.value.body,
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ],
                ),
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
