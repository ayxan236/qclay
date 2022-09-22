import 'package:qclay/app/presentation/screens/splash/bloc/splash_bloc.dart';
import 'package:qclay/app/resources/app_styles.dart';
import 'package:qclay/app/resources/app_themes.dart';
import 'package:qclay/core/ui/widgets/base_bloc_listener.dart';
import 'package:qclay/core/ui/widgets/base_bloc_state_widget.dart';
import 'package:qclay/di/injection.dart';
import 'package:qclay/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../navigation/navigate_action.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends BaseBlocStateWidget<SplashScreen, SplashBloc, SplashEvent> {
  @override
  Widget build(BuildContext context) => BaseBlocListener<SplashBloc, SplashState>(
        listener: (context, state, action) async {
          if (action is NavigateAction) {
            SystemChrome.setSystemUIOverlayStyle(AppStyles.main);
          }
          if (action is RegisterLocalization) {
            await Locator.registerLocalization(context);
          }
        },
        child: Scaffold(body: Container()),
      );
}
