import 'package:get/get.dart';

import 'package:flutter_getx_app_template/app/modules/recovery_email/controllers/recovery_email_controller.dart';

class RecoveryEmailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RecoveryEmailController>(
      () => RecoveryEmailController(),
    );
  }
}
