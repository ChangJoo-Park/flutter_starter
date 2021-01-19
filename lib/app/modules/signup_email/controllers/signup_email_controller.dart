import 'package:flutter/material.dart';
import 'package:flutter_getx_app_template/app/controllers/controllers.dart';
import 'package:flutter_getx_app_template/app/models/models.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

class SignupEmailController extends GetxController {
  final logger = Logger(printer: PrettyPrinter());
  final formKey = GlobalKey<FormState>();
  final String emailPlaceholder = '이메일';
  final String usernamePlaceholder = '사용자 이름';
  final String passwordPlaceholder = '비밀번호';

  final TextEditingController emailEditingController =
      TextEditingController(text: '');
  final TextEditingController usernameEditingController =
      TextEditingController(text: '');
  final TextEditingController passwordEditingController =
      TextEditingController(text: '');

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  String submit() {
    final AuthController authController = AuthController.to;
    if (formKey.currentState.validate()) {
      authController.signin(
        UserModel(
          email: emailEditingController.text,
          name: 'USER ONE',
          photoUrl:
              'https://i.pinimg.com/originals/51/f6/fb/51f6fb256629fc755b8870c801092942.png',
          uid: 'ABCDEFG',
        ),
      );
      return null;
    }
    logger.d('invalid');
    return 'invalidate';
  }
}
