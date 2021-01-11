import 'package:get/get.dart';

import 'package:flutter_getx_app_template/app/modules/signup_oauth/controllers/signup_oauth_controller.dart';

class SignupOauthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignupOauthController>(
      () => SignupOauthController(),
    );
  }
}
