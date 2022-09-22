import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qclay/app/presentation/screens/wallet/wallet_screen.dart';
import 'package:qclay/app/presentation/widgets/bottom_bars/base_bottom_navigation_bar.dart';
import 'package:qclay/app/resources/app_colors.dart';
import 'package:qclay/core/ui/widgets/base_bloc_listener.dart';
import 'package:qclay/core/ui/widgets/base_bloc_state_widget.dart';
import 'package:qclay/domain/enums/navigation_bar_item.dart';

import 'bloc/navigation_bloc.dart';

class NavigationScreen extends StatefulWidget {
  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends BaseBlocStateWidget<NavigationScreen, NavigationBloc, NavigationEvent>
    with WidgetsBindingObserver {
  List<Widget> _screensList = [
    SizedBox(),
    WalletScreen(),
    SizedBox(),
    SizedBox(),
  ];

  Map<int, GlobalKey<NavigatorState>> _navKeys = {};

  @override
  void initState() {
    _initNavigationKeys();
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    // These are the callbacks
    switch (state) {
      case AppLifecycleState.resumed:
        sendEvent(NavigationEvent.screenOpened());
        // widget is resumed
        break;
      case AppLifecycleState.inactive:
        // widget is inactive
        break;
      case AppLifecycleState.paused:
        // widget is paused
        break;
      case AppLifecycleState.detached:
        // widget is detached
        break;
    }
  }

  @override
  Widget build(BuildContext context) => BaseBlocListener<NavigationBloc, NavigationState>(
        child: SafeArea(
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: _buildBody(),
          ),
        ),
      );

  Widget _buildBody() => BlocConsumer<NavigationBloc, NavigationState>(
        listenWhen: (previous, current) => previous.action != current.action,
        buildWhen: (previous, current) => previous.selectedItem != current.selectedItem,
        listener: (context, state) {},
        builder: (context, state) => Stack(
          children: [
            IndexedStack(
              index: NavigationBarItem.values.indexOf(state.selectedItem),
              children: List.generate(
                _screensList.length,
                (index) => _buildItemNavigator(key: _navKeys[index], page: _screensList[index]),
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: mediaQuery.viewPadding.bottom),
                  child: _buildBottomNavigationBar(state.selectedItem),
                ),
              ),
            ),
          ],
        ),
      );

  Widget _buildBottomNavigationBar(NavigationBarItem selectedItem) => BaseBottomNavigationBar(
        onItemSelected: (NavigationBarItem item) {
          sendEvent(NavigationEvent.navigationBarItemSelected(item));
        },
        selectedItem: selectedItem,
      );

  Navigator _buildItemNavigator({GlobalKey<NavigatorState>? key, dynamic page}) {
    return Navigator(
      key: key,
      onGenerateRoute: (route) => MaterialPageRoute(
        settings: route,
        builder: (context) => page,
      ),
    );
  }

  void _initNavigationKeys() {
    _screensList.asMap().forEach((i, element) {
      _navKeys.putIfAbsent(i, () => GlobalKey<NavigatorState>());
    });
  }
}
