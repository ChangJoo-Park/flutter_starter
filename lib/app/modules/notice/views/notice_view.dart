import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:flutter_getx_app_template/app/modules/notice/controllers/notice_controller.dart';

class NoticeView extends GetView<NoticeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NoticeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'NoticeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
