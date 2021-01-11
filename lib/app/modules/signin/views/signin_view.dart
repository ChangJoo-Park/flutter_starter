import 'package:flutter/material.dart';
import 'package:flutter_getx_app_template/app/controllers/auth_controller.dart';
import 'package:flutter_getx_app_template/app/modules/signin/controllers/signin_controller.dart';
import 'package:flutter_getx_app_template/app/routes/app_pages.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

class SigninView extends GetView<SigninController> {
  final logger = Logger(printer: PrettyPrinter());

  @override
  Widget build(BuildContext context) {
    final authController = AuthController.to;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text('MyApp'),
            expandedHeight: 200,
          ),
          // Email Login Form
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
                    SignInButton(
                      Buttons.Email,
                      onPressed: controller.submit,
                    ),
                    TextButton(
                      onPressed: () {
                        Get.toNamed(AppPages.RECOVER_EMAIL);
                      },
                      child: Text('이메일을 잃어버렸어요'),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.toNamed(AppPages.RECOVER_PASSWORD);
                      },
                      child: Text('비밀번호를 잃어버렸어요'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(child: Divider()),
          // Social Login
          SliverToBoxAdapter(
            child: Column(
              children: [
                Text('또는'),
                SignInButton(
                  Buttons.AppleDark,
                  onPressed: () {},
                ),
                SignInButton(
                  Buttons.Google,
                  onPressed: () {},
                ),
                SignInButton(
                  Buttons.Microsoft,
                  onPressed: () {},
                ),
                SignInButton(
                  Buttons.Facebook,
                  onPressed: () {},
                ),
                SignInButton(
                  Buttons.Twitter,
                  onPressed: () {},
                ),
                SignInButton(
                  Buttons.GitHub,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(child: Divider()),
          SliverToBoxAdapter(
            child: Column(
              children: [
                TextButton(
                  onPressed: () {
                    Get.toNamed(AppPages.SIGNUP_EMAIL);
                  },
                  child: Text('이메일로 회원가입하기'),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Center(
                child: Text('Copyright'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
