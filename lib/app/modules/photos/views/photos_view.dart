import 'package:flutter/material.dart';
import 'package:flutter_getx_app_template/app/modules/photos/photo_model.dart';
import 'package:get/get.dart';
import 'package:flutter_getx_app_template/app/modules/photos/controllers/photos_controller.dart';

class PhotosView extends GetView<PhotosController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PhotosView'),
        centerTitle: true,
      ),
      body: Obx(
        () => controller.loaded.value
            ? GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: controller.list.length,
                itemBuilder: (BuildContext context, int index) {
                  Photo photo = controller.list[index];
                  return Center(
                    child: Image.network(photo.url),
                  );
                },
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
