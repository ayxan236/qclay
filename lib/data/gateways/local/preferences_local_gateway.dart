import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferencesLocalGateway {
  PreferencesLocalGateway({
    required this.flutterSecureStorage,
    required this.sharedPreferences,
  });

  static const tokenKey = 'token';
  static const pushTokenKey = 'pushToken';

  static const localeKey = 'locale';
  static const phoneKey = 'phone';
  static const verifyKey = 'verify';
  static const twoFactorKey = 'twoFactor';

  FlutterSecureStorage flutterSecureStorage;
  SharedPreferences sharedPreferences;

  Future<String?> getToken() async {
    String? token = await flutterSecureStorage.read(key: tokenKey);
    return token;
  }

  Future setToken(String? apiToken) {
    return flutterSecureStorage.write(key: tokenKey, value: apiToken);
  }

  Future<String?> getPushToken() async {
    String? token = await flutterSecureStorage.read(key: pushTokenKey);
    return token;
  }

  Future setPushToken(String? token) {
    return flutterSecureStorage.write(key: pushTokenKey, value: token);
  }

  Future<String?> getPhone() async {
    return flutterSecureStorage.read(key: phoneKey);
  }

  Future setPhone(String? phone) {
    return flutterSecureStorage.write(key: phoneKey, value: phone);
  }

  Future<String?> getLocale() async {
    return await flutterSecureStorage.read(key: localeKey);
  }

  Future setLocale(String? locale) {
    return flutterSecureStorage.write(key: localeKey, value: locale);
  }

  Future<bool> getVerify() async {
    var result = await flutterSecureStorage.read(key: verifyKey);

    if (result == "true") {
      return true;
    } else {
      return false;
    }
  }

  Future setVerify(bool? verify) {
    return flutterSecureStorage.write(key: verifyKey, value: verify.toString());
  }

  Future<bool> getTwoFactor() async {
    var result = await flutterSecureStorage.read(key: twoFactorKey);

    if (result == "true") {
      return true;
    } else {
      return false;
    }
  }

  Future setTwoFactor(bool? verify) {
    return flutterSecureStorage.write(key: twoFactorKey, value: verify.toString());
  }
}
