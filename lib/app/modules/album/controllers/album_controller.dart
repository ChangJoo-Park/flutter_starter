import 'package:get/get.dart';

class AlbumController extends GetxController {
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    print('on init');
  }

  @override
  void onReady() {
    super.onReady();
    print('on ready');
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
