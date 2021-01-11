import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:flutter_getx_app_template/app/modules/recovery_email/controllers/recovery_email_controller.dart';

class RecoveryEmailView extends GetView<RecoveryEmailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RecoveryEmailView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'RecoveryEmailView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
