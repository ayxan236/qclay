import 'dart:async';
import 'dart:io' as io;

import 'package:qclay/app/bloc/app_bloc.dart';
import 'package:qclay/app/presentation/screens/splash/bloc/splash_bloc.dart';
import 'package:qclay/app/presentation/screens/splash/splash_screen.dart';
import 'package:qclay/app/resources/app_themes.dart';
import 'package:qclay/core/ui/widgets/base_bloc_state_widget.dart';
import 'package:qclay/core/ui/widgets/close_keyboard_by_tap.dart';
import 'package:qclay/di/injection.dart';
import 'package:qclay/localization/app_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:overlay_support/overlay_support.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends BaseBlocStateWidget<App, AppBloc, AppEvent> with WidgetsBindingObserver {
  late KeyboardVisibilityController _keyboardVisibilityController;
  late StreamSubscription<bool> _keyboardSubscription;

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  late var _currentUuid;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    if (!io.Platform.isWindows) {
      _keyboardVisibilityController = KeyboardVisibilityController();
      _keyboardSubscription = _keyboardVisibilityController.onChange.listen((bool visible) {
        if (!visible) {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
            FocusManager.instance.primaryFocus?.unfocus();
          }
        }
      });
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    sendEvent(AppEvent.appLifecycleStateChanged(state));
    if (state == AppLifecycleState.resumed) {
      //Check call when open app from background
    }
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
    _keyboardSubscription.cancel();
  }

  @override
  Widget build(BuildContext context) => BlocBuilder<AppBloc, AppState>(
        buildWhen: (previous, current) => previous.locale != current.locale,
        builder: (context, state) => CloseKeyboardByTap(
          OverlaySupport(
            child: MaterialApp(
              navigatorKey: navigatorKey,
              theme: AppThemes.appTheme,
              locale: state.locale,
              debugShowCheckedModeBanner: false,
              localizationsDelegates: <LocalizationsDelegate<dynamic>>[
                AppLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
              ],
              supportedLocales: [
                Locale('az'),
                Locale('ru'),
                Locale('en'),
              ],
              home: BlocProvider(
                create: (BuildContext context) => SplashBloc(
                  preferencesLocalGateway: Locator.injection(),
                ),
                child: SplashScreen(),
              ),
            ),
          ),
        ),
      );
}
