import 'package:flutter/material.dart';
import 'package:flutter_getx_app_template/app/localizations.dart';
import 'package:flutter_getx_app_template/globals.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'dart:ui';

class LanguageController extends GetxController {
  static LanguageController get to => Get.find();
  final language = "".obs;
  final store = GetStorage();

  String get currentLanguage => language.value;

  @override
  void onReady() async {
    setInitialLocalLanguage();
    super.onReady();
  }

  // Retrieves and Sets language based on device settings
  setInitialLocalLanguage() {
    if ((currentLanguageStore.value == '') ||
        (currentLanguageStore.value == null)) {
      String _deviceLanguage = window.locale.toString();
      _deviceLanguage =
          _deviceLanguage.substring(0, 2); //only get 1st 2 characters
      updateLanguage(_deviceLanguage);
    }
  }

// Gets current language stored
  RxString get currentLanguageStore {
    language.value = store.read('language');
    return language;
  }

  // gets the language locale app is set to
  Locale get getLocale {
    if ((currentLanguageStore.value == '') ||
        (currentLanguageStore.value == null)) {
      language.value = Globals.defaultLanguage;
      updateLanguage(Globals.defaultLanguage);
    }
    // gets the default language key (from the translation language system)
    Locale _updatedLocal = AppLocalizations.languages.keys.first;
    // looks for matching language key stored and sets to it
    AppLocalizations.languages.keys.forEach((locale) {
      if (locale.languageCode == currentLanguage) {
        _updatedLocal = locale;
      }
    });
    //print('getLocale: ' + _updatedLocal.toString());
    return _updatedLocal;
  }

// updates the language stored
  Future<void> updateLanguage(String value) async {
    language.value = value;
    await store.write('language', value);
    Get.updateLocale(getLocale);
    update();
  }

  showLocaleDialog() {
    final labels = AppLocalizations.of(Get.context);

    showDialog(
      context: Get.context,
      child: SimpleDialog(
        title: Text(labels.drawer.language.dialog.title),
        children: [
          SimpleDialogOption(
            child: Text(labels.drawer.language.option.korean),
            onPressed: () {
              updateLanguage('ko');
              Get.back();
            },
          ),
          SimpleDialogOption(
            child: Text(labels.drawer.language.option.english),
            onPressed: () {
              updateLanguage('en');
              Get.back();
            },
          ),
        ],
      ),
    );
  }
}
