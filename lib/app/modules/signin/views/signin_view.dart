import 'package:flutter/material.dart';
import 'package:flutter_getx_app_template/app/controllers/controllers.dart';
import 'package:flutter_getx_app_template/app/localizations.dart';
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
    final LanguageController languageController = LanguageController.to;
    final labels = AppLocalizations.of(context);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text("APP NAME"),
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: const EdgeInsets.only(bottom: 8.0),
              centerTitle: true,
              collapseMode: CollapseMode.parallax,
              background: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                    padding: EdgeInsets.only(left: 32.0, right: 32.0),
                    icon: Icon(
                      Icons.language,
                      color: Colors.white,
                    ),
                    onPressed: languageController.showLocaleDialog,
                  ),
                ],
              ),
            ),
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
                          hintText: labels.auth.placeholder.email,
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
                          hintText: labels.auth.placeholder.password,
                        ),
                        controller: controller.passwordEditingController,
                        validator: authController.passwordInputValidator,
                        obscureText: true,
                      ),
                    ),
                    SignInButton(
                      Buttons.Email,
                      text: labels.auth.signin.email,
                      onPressed: controller.submit,
                    ),
                    TextButton(
                      onPressed: () {
                        Get.toNamed(Routes.RECOVERY_EMAIL);
                      },
                      child: Text(labels.auth.menu.recoverEmail),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.toNamed(Routes.RECOVERY_PASSWORD);
                      },
                      child: Text(labels.auth.menu.recoverPassword),
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
                SignInButton(
                  Buttons.AppleDark,
                  text: labels.auth.signin.oauth(provider: 'Apple'),
                  onPressed: () {},
                ),
                SignInButton(
                  Buttons.Google,
                  text: labels.auth.signin.oauth(provider: 'Google'),
                  onPressed: () {},
                ),
                SignInButton(
                  Buttons.Microsoft,
                  text: labels.auth.signin.oauth(provider: 'Microsoft'),
                  onPressed: () {},
                ),
                SignInButton(
                  Buttons.Facebook,
                  text: labels.auth.signin.oauth(provider: 'Facebook'),
                  onPressed: () {},
                ),
                SignInButton(
                  Buttons.Twitter,
                  text: labels.auth.signin.oauth(provider: 'Twitter'),
                  onPressed: () {},
                ),
                SignInButton(
                  Buttons.GitHub,
                  text: labels.auth.signin.oauth(provider: 'GitHub'),
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
                    Get.toNamed(Routes.SIGNUP_EMAIL);
                  },
                  child: Text(labels.auth.menu.signupEmail),
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
