import 'package:get/get.dart';

import 'package:flutter_getx_app_template/app/modules/recovery_password/controllers/recovery_password_controller.dart';

class RecoveryPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RecoveryPasswordController>(
      () => RecoveryPasswordController(),
    );
  }
}
