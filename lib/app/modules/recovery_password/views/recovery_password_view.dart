import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:flutter_getx_app_template/app/modules/recovery_password/controllers/recovery_password_controller.dart';

class RecoveryPasswordView extends GetView<RecoveryPasswordController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RecoveryPasswordView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'RecoveryPasswordView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
