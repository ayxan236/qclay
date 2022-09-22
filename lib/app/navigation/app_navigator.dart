import 'package:qclay/app/presentation/screens/navigation/bloc/navigation_bloc.dart';
import 'package:qclay/app/presentation/screens/navigation/navigation_screen.dart';
import 'package:qclay/app/presentation/screens/wallet/bloc/wallet_bloc.dart';
import 'package:qclay/di/injection.dart';
import 'package:qclay/domain/enums/navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'navigate_action.dart';
import 'navigation_type.dart';

class AppNavigator {
  static Future<D?> navigate<D>({
    required BuildContext context,
    required NavigateAction action,
  }) async {
    if (action is NavigateBack) {
      Navigator.pop(context);
      return null;
    }
    bool rootNavigator = false;
    late NavigateType navigateType;
    late Route<D?> route;
    String routeName = action.runtimeType.toString();
    action.when(
      navigateBack: () {},
      navigateToNavigation: (NavigateType type, NavigationBarItem? navItem) {
        navigateType = type;
        WalletBloc walletBloc = WalletBloc();
        route = MaterialPageRoute(
          settings: RouteSettings(name: routeName),
          builder: (BuildContext context) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => NavigationBloc(
                  navItem: navItem,
                  preferencesLocalGateway: Locator.injection(),
                ),
              ),
              BlocProvider(create: (context) => walletBloc),
            ],
            child: NavigationScreen(),
          ),
        );
      },
    );

    switch (navigateType) {
      case NavigateType.push:
        return await Navigator.of(context, rootNavigator: rootNavigator).push<D?>(route);
      case NavigateType.pushReplacement:
        return await Navigator.of(context, rootNavigator: rootNavigator).pushReplacement<D?, Object>(route);
      case NavigateType.pushAndRemoveUntil:
        return await Navigator.of(context, rootNavigator: rootNavigator).pushAndRemoveUntil<D?>(route, (_) => false);
      case NavigateType.popUntil:
        Navigator.popUntil(context, (routeForCompare) => route == routeForCompare);
    }
    return null;
  }
}
