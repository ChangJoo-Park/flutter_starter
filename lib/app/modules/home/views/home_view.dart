import 'package:flutter/material.dart';
import 'package:flutter_getx_app_template/app/controllers/auth_controller.dart';

import 'package:get/get.dart';

import 'package:flutter_getx_app_template/app/modules/home/controllers/home_controller.dart';
import 'package:logger/logger.dart';

class HomeView extends GetView<HomeController> {
  final logger = Logger(printer: PrettyPrinter());

  @override
  Widget build(BuildContext context) {
    final AuthController authController = AuthController.to;
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              'HomeView is working',
              style: TextStyle(fontSize: 20),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              logger.d('로그아웃');
              authController.signout();
            },
            child: Text('로그아웃'),
          )
        ],
      ),
    );
  }
}
