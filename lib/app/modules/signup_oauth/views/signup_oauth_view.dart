import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:flutter_getx_app_template/app/modules/signup_oauth/controllers/signup_oauth_controller.dart';

class SignupOauthView extends GetView<SignupOauthController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SignupOauthView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SignupOauthView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
