import 'package:flutter/material.dart';
import 'package:flutter_getx_app_template/app/controllers/controllers.dart';
import 'package:flutter_getx_app_template/app/localizations.dart';

import 'package:get/get.dart';

import 'package:flutter_getx_app_template/app/modules/home/controllers/home_controller.dart';
import 'package:logger/logger.dart';

class HomeView extends GetView<HomeController> {
  final logger = Logger(printer: PrettyPrinter());

  @override
  Widget build(BuildContext context) {
    final AuthController authController = AuthController.to;
    final LanguageController languageController = LanguageController.to;
    final labels = AppLocalizations.of(context);

    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage:
                      NetworkImage(authController.getUser.photoUrl),
                ),
                accountEmail: Text(authController.getUser.email),
                accountName: Text(authController.getUser.name),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text(labels.drawer.menu.profile),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.receipt),
              title: Text(labels.drawer.menu.notice),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.language),
              title: Text(labels.drawer.menu.language),
              onTap: languageController.showLocaleDialog,
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(labels.drawer.menu.setting),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(),
          SliverToBoxAdapter(
            child: Column(
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
          )
        ],
      ),
    );
  }
}
