import 'package:flutter_getx_app_template/app/localizations.dart';
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
    if (getUser == null) {
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

  UserModel get getUser {
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
    final labels = AppLocalizations.of(Get.context);

    if (value.isEmail) {
      return null;
    }
    return labels.auth.validation.email;
  }

  String passwordInputValidator(String value) {
    final labels = AppLocalizations.of(Get.context);

    if (value.isNotEmpty) {
      return null;
    }
    return labels.auth.validation.password;
  }
}
