import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/app_pages.dart';

class BottomNavigationController extends GetxController {
  static BottomNavigationController get to => Get.find();
  final pages = AppPages.bottomNavigationPages;
  final currentPageIndex = 0.obs;

  void changePage(int index) {
    if (currentPageIndex.value == index) {
      return;
    }
    currentPageIndex.value = index;
  }

  Widget get currentPage {
    return pages[currentPageIndex.value].page();
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
