// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localizations.dart';

// **************************************************************************
// SheetLocalizationGenerator
// **************************************************************************

// ignore_for_file: camel_case_types

class AppLocalizations {
  AppLocalizations(this.locale) : labels = languages[locale];

  final Locale locale;

  static final Map<Locale, AppLocalizations_Labels> languages = {
    Locale.fromSubtags(languageCode: 'ko'): AppLocalizations_Labels(
      multiline: '',
      drawer: AppLocalizations_Labels_Drawer(
        menu: AppLocalizations_Labels_Drawer_Menu(
          profile: '프로필',
          notice: '공지사항',
          language: '언어 설정',
          setting: '설정',
        ),
        language: AppLocalizations_Labels_Drawer_Language(
          dialog: AppLocalizations_Labels_Drawer_Language_Dialog(
            title: '언어 설정',
          ),
          option: AppLocalizations_Labels_Drawer_Language_Option(
            korean: '한국어',
            english: 'English',
          ),
        ),
      ),
      auth: AppLocalizations_Labels_Auth(
        signout: '로그아웃',
        signin: AppLocalizations_Labels_Auth_Signin(
          email: '이메일로 로그인',
          oauth: ({provider}) => '''${provider}로 로그인''',
        ),
        menu: AppLocalizations_Labels_Auth_Menu(
          recoverEmail: '이메일을 잃어버렸어요',
          recoverPassword: '비밀번호를 잃어버렸어요',
          signupEmail: '이메일로 회원가입하기',
        ),
      ),
      dates: AppLocalizations_Labels_Dates(
        weekday: AppLocalizations_Labels_Dates_Weekday(
          monday: '',
          tuesday: '',
          wednesday: '',
          thursday: '',
          friday: '',
          saturday: '',
          sunday: '',
        ),
        month: AppLocalizations_Labels_Dates_Month(
          january: '',
          february: '',
          march: '',
          april: '',
        ),
      ),
      templated: AppLocalizations_Labels_Templated(
        hello: '',
        contact: (condition) {
          if (condition == Gender.male) return '''''';
          if (condition == Gender.female) return '''''';
          throw Exception();
        },
        numbers: AppLocalizations_Labels_Templated_Numbers(
          count: '',
          simple: '',
          formatted: '',
        ),
        date: AppLocalizations_Labels_Templated_Date(
          simple: '',
          pattern: '',
        ),
      ),
      plurals: AppLocalizations_Labels_Plurals(
        man: (condition) {
          if (condition == Plural.zero) return '''''';
          if (condition == Plural.one) return '''''';
          if (condition == Plural.multiple) return '''''';
          throw Exception();
        },
      ),
    ),
    Locale.fromSubtags(languageCode: 'en'): AppLocalizations_Labels(
      multiline: 'This is\n\na\n\nmultiline example.',
      drawer: AppLocalizations_Labels_Drawer(
        menu: AppLocalizations_Labels_Drawer_Menu(
          profile: 'Profile',
          notice: 'Notice',
          language: 'Locale',
          setting: 'Settings',
        ),
        language: AppLocalizations_Labels_Drawer_Language(
          dialog: AppLocalizations_Labels_Drawer_Language_Dialog(
            title: 'Select locale',
          ),
          option: AppLocalizations_Labels_Drawer_Language_Option(
            korean: '한국어',
            english: 'English',
          ),
        ),
      ),
      auth: AppLocalizations_Labels_Auth(
        signout: 'Sign Out',
        signin: AppLocalizations_Labels_Auth_Signin(
          email: 'Sign In with Email',
          oauth: ({provider}) => '''Sign In with ${provider}''',
        ),
        menu: AppLocalizations_Labels_Auth_Menu(
          recoverEmail: 'Forogt an email address',
          recoverPassword: 'Forgot a password',
          signupEmail: 'Sign Up with Email',
        ),
      ),
      dates: AppLocalizations_Labels_Dates(
        weekday: AppLocalizations_Labels_Dates_Weekday(
          monday: 'MONDAY',
          tuesday: 'tuesday',
          wednesday: 'wednesday',
          thursday: 'thursday',
          friday: 'friday',
          saturday: 'saturday',
          sunday: 'sunday',
        ),
        month: AppLocalizations_Labels_Dates_Month(
          january: 'january',
          february: 'february',
          march: 'march',
          april: 'april',
        ),
      ),
      templated: AppLocalizations_Labels_Templated(
        hello: 'Hello {{first_name}}!',
        contact: (condition) {
          if (condition == Gender.male) return '''Mr {{last_name}}!''';
          if (condition == Gender.female) return '''Mrs {{last_name}}!''';
          throw Exception();
        },
        numbers: AppLocalizations_Labels_Templated_Numbers(
          count: 'There are {{count:int}}\ items.',
          simple: 'The price is {{price:double}}\$',
          formatted: 'The price is {{price:double[compactCurrency]}}',
        ),
        date: AppLocalizations_Labels_Templated_Date(
          simple: 'Today : {{date:DateTime}}',
          pattern: 'Today : {{date:DateTime[EEE, M/d/y]}}',
        ),
      ),
      plurals: AppLocalizations_Labels_Plurals(
        man: (condition) {
          if (condition == Plural.zero) return '''man''';
          if (condition == Plural.one) return '''man''';
          if (condition == Plural.multiple) return '''men''';
          throw Exception();
        },
      ),
    ),
  };

  final AppLocalizations_Labels labels;

  static AppLocalizations_Labels of(BuildContext context) =>
      Localizations.of<AppLocalizations>(context, AppLocalizations)?.labels;
}

enum Gender {
  male,
  female,
}
enum Plural {
  zero,
  one,
  multiple,
}

class AppLocalizations_Labels_Drawer_Menu {
  const AppLocalizations_Labels_Drawer_Menu(
      {this.profile, this.notice, this.language, this.setting});

  final String profile;

  final String notice;

  final String language;

  final String setting;

  String getByKey(String key) {
    switch (key) {
      case 'profile':
        return profile;
      case 'notice':
        return notice;
      case 'language':
        return language;
      case 'setting':
        return setting;
      default:
        return '';
    }
  }
}

class AppLocalizations_Labels_Drawer_Language_Dialog {
  const AppLocalizations_Labels_Drawer_Language_Dialog({this.title});

  final String title;

  String getByKey(String key) {
    switch (key) {
      case 'title':
        return title;
      default:
        return '';
    }
  }
}

class AppLocalizations_Labels_Drawer_Language_Option {
  const AppLocalizations_Labels_Drawer_Language_Option(
      {this.korean, this.english});

  final String korean;

  final String english;

  String getByKey(String key) {
    switch (key) {
      case 'korean':
        return korean;
      case 'english':
        return english;
      default:
        return '';
    }
  }
}

class AppLocalizations_Labels_Drawer_Language {
  const AppLocalizations_Labels_Drawer_Language({this.dialog, this.option});

  final AppLocalizations_Labels_Drawer_Language_Dialog dialog;

  final AppLocalizations_Labels_Drawer_Language_Option option;

  String getByKey(String key) {
    switch (key) {
      default:
        return '';
    }
  }
}

class AppLocalizations_Labels_Drawer {
  const AppLocalizations_Labels_Drawer({this.menu, this.language});

  final AppLocalizations_Labels_Drawer_Menu menu;

  final AppLocalizations_Labels_Drawer_Language language;

  String getByKey(String key) {
    switch (key) {
      default:
        return '';
    }
  }
}

typedef AppLocalizations_Labels_Auth_Signin_oauth = String Function(
    {@required String provider});

class AppLocalizations_Labels_Auth_Signin {
  const AppLocalizations_Labels_Auth_Signin(
      {this.email, AppLocalizations_Labels_Auth_Signin_oauth oauth})
      : _oauth = oauth;

  final String email;

  final AppLocalizations_Labels_Auth_Signin_oauth _oauth;

  String getByKey(String key) {
    switch (key) {
      case 'email':
        return email;
      default:
        return '';
    }
  }

  String oauth({@required String provider}) => _oauth(
        provider: provider,
      );
}

class AppLocalizations_Labels_Auth_Menu {
  const AppLocalizations_Labels_Auth_Menu(
      {this.recoverEmail, this.recoverPassword, this.signupEmail});

  final String recoverEmail;

  final String recoverPassword;

  final String signupEmail;

  String getByKey(String key) {
    switch (key) {
      case 'recoverEmail':
        return recoverEmail;
      case 'recoverPassword':
        return recoverPassword;
      case 'signupEmail':
        return signupEmail;
      default:
        return '';
    }
  }
}

class AppLocalizations_Labels_Auth {
  const AppLocalizations_Labels_Auth({this.signout, this.signin, this.menu});

  final String signout;

  final AppLocalizations_Labels_Auth_Signin signin;

  final AppLocalizations_Labels_Auth_Menu menu;

  String getByKey(String key) {
    switch (key) {
      case 'signout':
        return signout;
      default:
        return '';
    }
  }
}

class AppLocalizations_Labels_Dates_Weekday {
  const AppLocalizations_Labels_Dates_Weekday(
      {this.monday,
      this.tuesday,
      this.wednesday,
      this.thursday,
      this.friday,
      this.saturday,
      this.sunday});

  final String monday;

  final String tuesday;

  final String wednesday;

  final String thursday;

  final String friday;

  final String saturday;

  final String sunday;

  String getByKey(String key) {
    switch (key) {
      case 'monday':
        return monday;
      case 'tuesday':
        return tuesday;
      case 'wednesday':
        return wednesday;
      case 'thursday':
        return thursday;
      case 'friday':
        return friday;
      case 'saturday':
        return saturday;
      case 'sunday':
        return sunday;
      default:
        return '';
    }
  }
}

class AppLocalizations_Labels_Dates_Month {
  const AppLocalizations_Labels_Dates_Month(
      {this.january, this.february, this.march, this.april});

  final String january;

  final String february;

  final String march;

  final String april;

  String getByKey(String key) {
    switch (key) {
      case 'january':
        return january;
      case 'february':
        return february;
      case 'march':
        return march;
      case 'april':
        return april;
      default:
        return '';
    }
  }
}

class AppLocalizations_Labels_Dates {
  const AppLocalizations_Labels_Dates({this.weekday, this.month});

  final AppLocalizations_Labels_Dates_Weekday weekday;

  final AppLocalizations_Labels_Dates_Month month;

  String getByKey(String key) {
    switch (key) {
      default:
        return '';
    }
  }
}

typedef AppLocalizations_Labels_Templated_contact = String Function(
    Gender condition);

class AppLocalizations_Labels_Templated_Numbers {
  const AppLocalizations_Labels_Templated_Numbers(
      {this.count, this.simple, this.formatted});

  final String count;

  final String simple;

  final String formatted;

  String getByKey(String key) {
    switch (key) {
      case 'count':
        return count;
      case 'simple':
        return simple;
      case 'formatted':
        return formatted;
      default:
        return '';
    }
  }
}

class AppLocalizations_Labels_Templated_Date {
  const AppLocalizations_Labels_Templated_Date({this.simple, this.pattern});

  final String simple;

  final String pattern;

  String getByKey(String key) {
    switch (key) {
      case 'simple':
        return simple;
      case 'pattern':
        return pattern;
      default:
        return '';
    }
  }
}

class AppLocalizations_Labels_Templated {
  const AppLocalizations_Labels_Templated(
      {this.hello,
      AppLocalizations_Labels_Templated_contact contact,
      this.numbers,
      this.date})
      : _contact = contact;

  final String hello;

  final AppLocalizations_Labels_Templated_contact _contact;

  final AppLocalizations_Labels_Templated_Numbers numbers;

  final AppLocalizations_Labels_Templated_Date date;

  String getByKey(String key) {
    switch (key) {
      case 'hello':
        return hello;
      default:
        return '';
    }
  }

  String contact(Gender condition) => _contact(
        condition,
      );
}

typedef AppLocalizations_Labels_Plurals_man = String Function(Plural condition);

class AppLocalizations_Labels_Plurals {
  const AppLocalizations_Labels_Plurals(
      {AppLocalizations_Labels_Plurals_man man})
      : _man = man;

  final AppLocalizations_Labels_Plurals_man _man;

  String getByKey(String key) {
    switch (key) {
      default:
        return '';
    }
  }

  String man(Plural condition) => _man(
        condition,
      );
}

class AppLocalizations_Labels {
  const AppLocalizations_Labels(
      {this.multiline,
      this.drawer,
      this.auth,
      this.dates,
      this.templated,
      this.plurals});

  final String multiline;

  final AppLocalizations_Labels_Drawer drawer;

  final AppLocalizations_Labels_Auth auth;

  final AppLocalizations_Labels_Dates dates;

  final AppLocalizations_Labels_Templated templated;

  final AppLocalizations_Labels_Plurals plurals;

  String getByKey(String key) {
    switch (key) {
      case 'multiline':
        return multiline;
      default:
        return '';
    }
  }
}
