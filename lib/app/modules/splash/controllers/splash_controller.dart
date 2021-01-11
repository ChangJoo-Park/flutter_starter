import 'package:get/get.dart';
import 'package:logger/logger.dart';

class SplashController extends GetxController {
  final logger = Logger(printer: PrettyPrinter());

  @override
  void onInit() {
    super.onInit();
    logger.d('SplashController initialized');
  }

  @override
  void onReady() {
    super.onReady();
    logger.d('SplashController ready');
  }

  @override
  void onClose() {}
}
