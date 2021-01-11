import 'package:get/get.dart';
import 'package:logger/logger.dart';

class AuthController extends GetxController {
  final logger = Logger(printer: PrettyPrinter());
  static AuthController get to => Get.find();

  final count = 0.obs;
  @override
  void onInit() {
    logger.d('여기서 사용자 정보를 가져와야함');
  }

  @override
  void onReady() {
    logger.d('AuthController ready');
  }

  @override
  void onClose() {
    logger.d('AuthController close');
  }

  void increment() => count.value++;
}
