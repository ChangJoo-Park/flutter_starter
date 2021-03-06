import 'package:flutter/material.dart';
import 'package:flutter_getx_app_template/app/components/loading_component.dart';
import 'package:flutter_getx_app_template/app/controllers/controllers.dart';
import 'package:flutter_getx_app_template/app/models/models.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

class SigninController extends GetxController {
  final logger = Logger(printer: PrettyPrinter());
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailEditingController =
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
    showLoadingIndicator();
    final AuthController authController = AuthController.to;
    if (formKey.currentState.validate()) {
      logger.d('validated');
      Future.delayed(500.milliseconds, () {
        hideLoadingIndicator();
        authController.signin(
          UserModel(
            email: emailEditingController.text,
            name: 'USER ONE',
            photoUrl:
                'https://i.pinimg.com/originals/51/f6/fb/51f6fb256629fc755b8870c801092942.png',
            uid: 'ABCDEFG',
          ),
        );
      });
    } else {
      logger.d('invalid');
      hideLoadingIndicator();
      return 'invalidate';
    }
  }
}
