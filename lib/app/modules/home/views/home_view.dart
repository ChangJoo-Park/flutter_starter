import 'package:flutter/material.dart';
import 'package:flutter_getx_app_template/app/controllers/controllers.dart';
import 'package:flutter_getx_app_template/app/localizations.dart';
import 'package:flutter_getx_app_template/app/modules/home/controllers/home_controller.dart';
import 'package:flutter_getx_app_template/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

import '../../../routes/app_pages.dart';

class HomeView extends GetView<HomeController> {
  final logger = Logger(printer: PrettyPrinter());

  @override
  Widget build(BuildContext context) {
    final AuthController authController = AuthController.to;
    final LanguageController languageController = LanguageController.to;
    final BottomNavigationController bottomNavigationController =
        BottomNavigationController.to;
    final labels = AppLocalizations.of(context);

    return Scaffold(
      drawer: Drawer(
        child: Container(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage:
                      NetworkImage(authController.getUser.photoUrl),
                ),
                accountEmail: Text(authController.getUser.email),
                accountName: Text(authController.getUser.name),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text(labels.drawer.menu.profile),
                onTap: () {
                  Get.toNamed(Routes.PROFILE);
                },
              ),
              ListTile(
                leading: Icon(Icons.notes),
                title: Text(labels.drawer.menu.notice),
                onTap: () {
                  Get.toNamed(Routes.NOTICE);
                },
              ),
              ListTile(
                leading: Icon(Icons.language),
                title: Text(labels.drawer.menu.language),
                onTap: languageController.showLocaleDialog,
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text(labels.drawer.menu.setting),
                onTap: () {
                  Get.toNamed(Routes.SETTING);
                },
              ),
            ],
          ),
        ),
      ),
      body: Obx(() => bottomNavigationController.currentPage),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: bottomNavigationController.currentPageIndex.value,
          onTap: bottomNavigationController.changePage,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Posts'),
            BottomNavigationBarItem(
                icon: Icon(Icons.photo_album), label: 'Album'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Setting'),
          ],
        ),
      ),
    );
  }
}
