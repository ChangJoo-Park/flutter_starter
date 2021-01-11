import 'package:get/get.dart';

import 'package:flutter_getx_app_template/app/modules/signin/controllers/signin_controller.dart';

class SigninBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SigninController>(
      () => SigninController(),
    );
  }
}
