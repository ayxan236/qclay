import 'package:qclay/app/bloc/app_bloc.dart';
import 'package:qclay/core/network/dio_helper.dart';
import 'package:qclay/core/network/network_info.dart';
import 'package:qclay/data/gateways/local/preferences_local_gateway.dart';
import 'package:qclay/data/gateways/remote/auth_remote_gateway.dart';
import 'package:qclay/localization/app_localizations.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Locator {
  static GetIt injection = GetIt.I;

  static Future<void> registerLocalization(BuildContext context) async {
    injection.registerSingleton<AppLocalizations>(AppLocalizations.of(context));
  }

  static Future<void> registerAppBloc(AppBloc appBloc) async {
    injection.registerSingleton<AppBloc>(appBloc);
  }

  static Future<void> init() async {
    injection.registerSingleton<FlutterSecureStorage>(FlutterSecureStorage());
    injection.registerSingleton<SharedPreferences>(await SharedPreferences.getInstance());
    // injection.registerSingleton<FirebaseMessaging>(await FirebaseMessaging.instance);
    injection.registerSingleton<PreferencesLocalGateway>(
      PreferencesLocalGateway(flutterSecureStorage: injection(), sharedPreferences: injection()),
    );
    injection.registerSingleton<Dio>(DioHelper.getDio(
      preferencesLocalGateway: injection(),
    ));

    injection.registerSingleton<DataConnectionChecker>(DataConnectionChecker());
    injection.registerSingleton<NetworkInfo>(NetworkInfoImpl(injection()));
  }
}
