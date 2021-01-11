import 'package:flutter_getx_app_template/app/models/models.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:logger/logger.dart';

class AuthController extends GetxController {
  final logger = Logger(printer: PrettyPrinter());
  static AuthController get to => Get.find();
  final store = GetStorage();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    logger.d('on ready');
    UserModel user = getUser();
    if (user == null) {
      Get.offAndToNamed('/signin');
    } else {
      Get.offAndToNamed('/home');
    }

    store.listenKey('USER', (value) {
      if (value == null) {
        Get.offAndToNamed('/signin');
      } else {
        Get.offAndToNamed('/home');
      }
    });
  }

  @override
  void onClose() {
    logger.d('AuthController close');
  }

  UserModel getUser() {
    var userJSON = store.read('USER');

    if (userJSON == null) {
      return null;
    }

    return UserModel.fromMap(userJSON);
  }

  Future signin(UserModel userModel) async {
    await store.write('USER', userModel.toJson());
  }

  void signout() async {
    await store.remove('USER');
  }

  String emailInputValidator(String value) {
    if (value.isEmail) {
      return null;
    }
    return '올바른 이메일을 입력하세요';
  }

  String passwordInputValidator(String value) {
    if (value.isNotEmpty) {
      return null;
    }
    return '올바른 비밀번호를 입력하세요';
  }
}
