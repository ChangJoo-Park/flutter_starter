import 'package:get/get.dart';

import 'package:flutter_getx_app_template/app/modules/signup_email/controllers/signup_email_controller.dart';

class SignupEmailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignupEmailController>(
      () => SignupEmailController(),
    );
  }
}
