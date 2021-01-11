import 'package:get/get.dart';

import 'package:flutter_getx_app_template/app/modules/home/bindings/home_binding.dart';
import 'package:flutter_getx_app_template/app/modules/home/views/home_view.dart';
import 'package:flutter_getx_app_template/app/modules/notice/bindings/notice_binding.dart';
import 'package:flutter_getx_app_template/app/modules/notice/views/notice_view.dart';
import 'package:flutter_getx_app_template/app/modules/profile/bindings/profile_binding.dart';
import 'package:flutter_getx_app_template/app/modules/profile/views/profile_view.dart';
import 'package:flutter_getx_app_template/app/modules/recovery_email/bindings/recovery_email_binding.dart';
import 'package:flutter_getx_app_template/app/modules/recovery_email/views/recovery_email_view.dart';
import 'package:flutter_getx_app_template/app/modules/recovery_password/bindings/recovery_password_binding.dart';
import 'package:flutter_getx_app_template/app/modules/recovery_password/views/recovery_password_view.dart';
import 'package:flutter_getx_app_template/app/modules/setting/bindings/setting_binding.dart';
import 'package:flutter_getx_app_template/app/modules/setting/views/setting_view.dart';
import 'package:flutter_getx_app_template/app/modules/signin/bindings/signin_binding.dart';
import 'package:flutter_getx_app_template/app/modules/signin/views/signin_view.dart';
import 'package:flutter_getx_app_template/app/modules/signup_email/bindings/signup_email_binding.dart';
import 'package:flutter_getx_app_template/app/modules/signup_email/views/signup_email_view.dart';
import 'package:flutter_getx_app_template/app/modules/signup_oauth/bindings/signup_oauth_binding.dart';
import 'package:flutter_getx_app_template/app/modules/signup_oauth/views/signup_oauth_view.dart';
import 'package:flutter_getx_app_template/app/modules/splash/bindings/splash_binding.dart';
import 'package:flutter_getx_app_template/app/modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;
  static const RECOVER_EMAIL = Routes.RECOVERY_EMAIL;
  static const SIGNIN = Routes.SIGNIN;
  static const SIGNUP_EMAIL = Routes.SIGNUP_EMAIL;
  static const RECOVER_PASSWORD = Routes.RECOVERY_PASSWORD;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SIGNIN,
      page: () => SigninView(),
      binding: SigninBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP_OAUTH,
      page: () => SignupOauthView(),
      binding: SignupOauthBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP_EMAIL,
      page: () => SignupEmailView(),
      binding: SignupEmailBinding(),
    ),
    GetPage(
      name: _Paths.RECOVERY_EMAIL,
      page: () => RecoveryEmailView(),
      binding: RecoveryEmailBinding(),
    ),
    GetPage(
      name: _Paths.RECOVERY_PASSWORD,
      page: () => RecoveryPasswordView(),
      binding: RecoveryPasswordBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.SETTING,
      page: () => SettingView(),
      binding: SettingBinding(),
    ),
    GetPage(
      name: _Paths.NOTICE,
      page: () => NoticeView(),
      binding: NoticeBinding(),
    ),
  ];
}
