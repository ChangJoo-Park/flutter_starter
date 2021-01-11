import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:flutter_getx_app_template/app/modules/signup_email/controllers/signup_email_controller.dart';

class SignupEmailView extends GetView<SignupEmailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SignupEmailView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SignupEmailView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
