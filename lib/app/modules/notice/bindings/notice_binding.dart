import 'package:get/get.dart';

import 'package:flutter_getx_app_template/app/modules/notice/controllers/notice_controller.dart';

class NoticeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NoticeController>(
      () => NoticeController(),
    );
  }
}
