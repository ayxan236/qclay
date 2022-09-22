import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppLocalizations {
  AppLocalizations(this.locale);

  Locale locale;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  static String getFormattedString(String string, List<String> inserts) {
    String newString = string;
    inserts.forEach((insert) {
      newString = newString.replaceFirst('{\$}', insert);
    });
    return newString;
  }

  late Map<String, String> _localizedStrings;

  Future<bool> load() async {
    String jsonString = await rootBundle.loadString('assets/i18n/${locale.languageCode}.json');
    Map<String, dynamic> jsonMap = json.decode(jsonString);

    _localizedStrings = jsonMap.map((key, value) {
      return MapEntry(key, value.toString());
    });

    return true;
  }

  String get profile => _localizedStrings['profile'] ?? '';
  String get notifications => _localizedStrings['notifications'] ?? '';
  String get notConnected => _localizedStrings['notConnected'] ?? '';
  String get connected => _localizedStrings['connected'] ?? '';
  String get connect => _localizedStrings['connect'] ?? '';
  String get helloAgain => _localizedStrings['helloAgain'] ?? '';
  String get email => _localizedStrings['email'] ?? '';
  String get emailSubtitle => _localizedStrings['emailSubtitle'] ?? '';
  String get emailVerification => _localizedStrings['emailVerification'] ?? '';
  String get emailSendTo => _localizedStrings['emailSendTo'] ?? '';
  String get password => _localizedStrings['password'] ?? '';
  String get signIn => _localizedStrings['signIn'] ?? '';
  String get forgotPassword => _localizedStrings['forgotPassword'] ?? '';
  String get dontHaveAccount => _localizedStrings['dontHaveAccount'] ?? '';
  String get register => _localizedStrings['register'] ?? '';
  String get fieldCantBeEmpty => _localizedStrings['fieldCantBeEmpty'] ?? '';
  String get continuez => _localizedStrings['continue'] ?? '';
  String get incorrectCode => _localizedStrings['incorrectCode'] ?? '';
  String get resetPassword => _localizedStrings['resetPassword'] ?? '';
  String get enterYourMail => _localizedStrings['enterYourMail'] ?? '';
  String get enterValidEmail => _localizedStrings['enterValidEmail'] ?? '';
  String get sendResetPassword => _localizedStrings['sendResetPassword'] ?? '';
  String get youRememberPassword => _localizedStrings['youRememberPassword'] ?? '';
  String get login => _localizedStrings['login'] ?? '';
  String get passwordResetSendEmailAddress => _localizedStrings['passwordResetSendEmailAddress'] ?? '';
  String get yourPasswordHasBeenChanged => _localizedStrings['yourPasswordHasBeenChanged'] ?? '';
  String get telephone => _localizedStrings['telephone'] ?? '';
  String get telephoneInvalid => _localizedStrings['telephoneInvalid'] ?? '';
  String get myTrees => _localizedStrings['myTrees'] ?? '';
  String get youDontHaveTreesYet => _localizedStrings['youDontHaveTreesYet'] ?? '';
  String get chooseATreeAndPlantIt => _localizedStrings['chooseATreeAndPlantIt'] ?? '';
  String get plantATree => _localizedStrings['plantATree'] ?? '';
  String get yes => _localizedStrings['yes'] ?? '';
  String get no => _localizedStrings['no'] ?? '';
  String get selectItem => _localizedStrings['selectItem'] ?? '';
  String get findTree => _localizedStrings['findTree'] ?? '';
  String get month => _localizedStrings['month'] ?? '';
  String get location => _localizedStrings['location'] ?? '';
  String get change => _localizedStrings['change'] ?? '';
  String get tasks => _localizedStrings['tasks'] ?? '';
  String get create => _localizedStrings['create'] ?? '';
  String get thisWalletDoesNotExist => _localizedStrings['thisWalletDoesNotExist'] ?? '';
  String get alreadyHaveAnAccount => _localizedStrings['alreadyHaveAnAccount'] ?? '';
  String get loginIn => _localizedStrings['loginIn'] ?? '';
  String get continueWord => _localizedStrings['continueWord'] ?? '';
  String get cantBeEmpty => _localizedStrings['cantBeEmpty'] ?? '';
  String get noNetworkConnection => _localizedStrings['noNetworkConnection'] ?? '';
  String get somethingWentWrong => _localizedStrings['somethingWentWrong'] ?? '';
  String get withdrawn => _localizedStrings['withdrawn'] ?? '';
  String get status => _localizedStrings['status'] ?? '';
  String get allTasks => _localizedStrings['allTasks'] ?? '';
  String get signOut => _localizedStrings['signOut'] ?? '';
  String get noNotifications => _localizedStrings['noNotifications'] ?? '';
  String get noTransactions => _localizedStrings['noTransactions'] ?? '';
  String get loginError => _localizedStrings['loginError'] ?? '';
  String get description => _localizedStrings['description'] ?? '';
  String get category => _localizedStrings['category'] ?? '';
  String get save => _localizedStrings['save'] ?? '';
  String get newTask => _localizedStrings['new_task'] ?? '';
  String get title => _localizedStrings['title'] ?? '';
  String get priority => _localizedStrings['priority'] ?? '';
  String get portal => _localizedStrings['portal'] ?? '';
  String get search => _localizedStrings['search'] ?? '';
  String get low => _localizedStrings['low'] ?? '';
  String hi(String name) => getFormattedString(_localizedStrings['hi'] ?? '', [name]);
  String get middle => _localizedStrings['middle'] ?? '';
  String get urgent => _localizedStrings['urgent'] ?? '';
  String get more => _localizedStrings['more'] ?? '';
  String get customer => _localizedStrings['customer'] ?? '';
  String get date => _localizedStrings['date'] ?? '';
  String get photos => _localizedStrings['photos'] ?? '';
  String get addSubCategory => _localizedStrings['add_sub_category'] ?? '';
  String get subscriptionEndTime => _localizedStrings['subscriptionEndTime'] ?? '';
  String get isNew => _localizedStrings['isNew'] ?? '';
  String get passwordsShortError => _localizedStrings['passwordsShortError'] ?? '';
  String get checking => _localizedStrings['checking'] ?? '';
  String get customerWait => _localizedStrings['customerWait'] ?? '';
  String get integrationMonitored => _localizedStrings['integrationMonitored'] ?? '';
  String get executed => _localizedStrings['executed'] ?? '';
  String get about => _localizedStrings['about'] ?? '';
  String get development => _localizedStrings['development'] ?? '';
  String get addComment => _localizedStrings['addComment'] ?? '';
  String get filter => _localizedStrings['filter'] ?? '';
  String get clear => _localizedStrings['clear'] ?? '';
  String get messageTitle => _localizedStrings['messageTitle'] ?? '';
  String get messageSubTitle => _localizedStrings['messageSubTitle'] ?? '';
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['az', 'ru', 'en'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    AppLocalizations localizations = AppLocalizations(locale);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}
