import 'package:flutter/material.dart';
import 'package:flutter_getx_app_template/app/controllers/controllers.dart';

import 'package:get/get.dart';

import 'package:flutter_getx_app_template/app/modules/signup_email/controllers/signup_email_controller.dart';

class SignupEmailView extends GetView<SignupEmailController> {
  @override
  Widget build(BuildContext context) {
    final authController = AuthController.to;

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlutterLogo(size: 200),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: controller.formKey,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 8),
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            hintText: controller.emailPlaceholder,
                          ),
                          controller: controller.emailEditingController,
                          validator: authController.emailInputValidator,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 8),
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            hintText: controller.passwordPlaceholder,
                          ),
                          controller: controller.passwordEditingController,
                          validator: authController.passwordInputValidator,
                          obscureText: true,
                        ),
                      ),
                      RaisedButton(
                        child: Text('가입하기'),
                        onPressed: controller.submit,
                      ),
                      TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Text('이미 가입했습니다.'),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
