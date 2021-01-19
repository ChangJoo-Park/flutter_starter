import 'package:flutter/material.dart';
import 'package:flutter_getx_app_template/app/modules/album/album_model.dart';
import 'package:flutter_getx_app_template/app/modules/album/providers/album_provider.dart';
import 'package:flutter_getx_app_template/app/modules/album/repositories/album_reposittory.dart';
import 'package:flutter_getx_app_template/app/routes/app_pages.dart';

import 'package:get/get.dart';

import 'package:flutter_getx_app_template/app/modules/album/controllers/album_controller.dart';

class AlbumView extends GetView<AlbumController> {
  @override
  Widget build(BuildContext context) {
    Get.put<AlbumProvider>(AlbumProvider());
    Get.put<AlbumRepository>(AlbumRepository());
    Get.put<AlbumController>(AlbumController());

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('AlbumView'),
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
                  Album album = controller.list[index];
                  return InkWell(
                    onTap: () {
                      Get.toNamed('${Routes.PHOTOS}?album=${album.id}');
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(album.title),
                      ),
                    ),
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
