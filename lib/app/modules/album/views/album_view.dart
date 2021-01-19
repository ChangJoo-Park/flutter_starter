import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:flutter_getx_app_template/app/modules/album/controllers/album_controller.dart';

class AlbumView extends GetView<AlbumController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('AlbumView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AlbumView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
