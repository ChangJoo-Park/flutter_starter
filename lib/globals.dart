import 'package:flutter_getx_app_template/app/models/models.dart';

class Globals {
  static final String defaultLanguage = 'en';
//List of languages that are supported.  Used in selector.
//Follow this plugin for translating a google sheet to languages
//https://github.com/aloisdeniel/flutter_sheet_localization
//Flutter App translations google sheet
//https://docs.google.com/spreadsheets/d/1NsChpiLO0Y4Vj2BS-SSsIQVeXowbgCPKj4uItHFOPGc/edit?usp=sharing

  static final List<MenuOptionsModel> languageOptions = [
    MenuOptionsModel(key: "ko", value: "한국어"), //Korean
    MenuOptionsModel(key: "zh", value: "中文"), //Chinese
    MenuOptionsModel(key: "de", value: "Deutsche"), //German
    MenuOptionsModel(key: "en", value: "English"), //English
    MenuOptionsModel(key: "es", value: "Español"), //Spanish
    MenuOptionsModel(key: "fr", value: "Français"), //French
    MenuOptionsModel(key: "hi", value: "हिन्दी"), //Hindi
    MenuOptionsModel(key: "ja", value: "日本語"), //Japanese
    MenuOptionsModel(key: "pt", value: "Português"), //Portuguese
    MenuOptionsModel(key: "ru", value: "русский"), //Russian
  ];
}
