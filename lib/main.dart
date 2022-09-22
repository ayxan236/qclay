// @dart=2.9
import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qclay/app/bloc/app_bloc.dart';

import 'app/app.dart';
import 'app/resources/app_styles.dart';
import 'di/injection.dart';
import 'package:uuid/uuid.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(AppStyles.main);
  // await Firebase.initializeApp();
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  await Locator.init();
  AppBloc appBloc = AppBloc();
  await Locator.registerAppBloc(appBloc);

  runZonedGuarded(() {
    runApp(
      BlocProvider(
        create: (context) => appBloc,
        child: App(),
      ),
    );
  }, (error, stackTrace) {
    print('runZonedGuarded: Caught error in my root zone.\n $error $stackTrace');
  });
}
