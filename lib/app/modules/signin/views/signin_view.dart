import 'package:flutter/material.dart';
import 'package:flutter_getx_app_template/app/controllers/auth_controller.dart';
import 'package:flutter_getx_app_template/app/models/models.dart';

import 'package:get/get.dart';

import 'package:flutter_getx_app_template/app/modules/signin/controllers/signin_controller.dart';
import 'package:logger/logger.dart';

class SigninView extends GetView<SigninController> {
  final logger = Logger(printer: PrettyPrinter());

  @override
  Widget build(BuildContext context) {
    final AuthController authController = AuthController.to;
    return Scaffold(
      appBar: AppBar(
        title: Text('SigninView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              authController.signin(
                UserModel(
                  email: 'user@gmail.com',
                  name: 'USER',
                  photoUrl:
                      'https://i.pinimg.com/originals/51/f6/fb/51f6fb256629fc755b8870c801092942.png',
                  uid: 'ABCDEFG',
                ),
              );
            },
            child: Text('헬로월드'),
          )
        ],
      ),
    );
  }
}
