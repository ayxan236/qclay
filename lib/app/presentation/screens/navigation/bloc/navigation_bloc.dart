import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qclay/core/bloc/bloc_action.dart';
import 'package:qclay/data/gateways/local/preferences_local_gateway.dart';
import 'package:qclay/domain/enums/navigation_bar_item.dart';
import 'package:qclay/core/bloc/base_bloc_state.dart';

part 'navigation_bloc.freezed.dart';

part 'navigation_event.dart';

part 'navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc({
    required this.preferencesLocalGateway,
    this.navItem,
  }) : super(NavigationState()) {
    on<Init>(_init);
    on<ScreenOpened>(_screenOpened);
    on<NavigationBarItemSelected>(_navigationBarItemSelected);

    this.add(NavigationEvent.init());
  }
  NavigationBarItem? navItem;

  PreferencesLocalGateway preferencesLocalGateway;
  late FlutterLocalNotificationsPlugin flutterNotificationPlugin;

  FutureOr<void> _init(Init event, Emitter<NavigationState> emit) async {
    if (navItem != null) {
      emit(state.copyWith(selectedItem: navItem!));
    }
  }

  FutureOr<void> _screenOpened(ScreenOpened event, Emitter<NavigationState> emit) {
    emit(state.copyWith());
  }

  FutureOr<void> _navigationBarItemSelected(
    NavigationBarItemSelected event,
    Emitter<NavigationState> emit,
  ) async {
    emit(state.copyWith(selectedItem: event.item));
  }
}
