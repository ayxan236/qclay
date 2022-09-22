import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qclay/app/navigation/navigate_action.dart';
import 'package:qclay/app/navigation/navigation_type.dart';
import 'package:qclay/core/bloc/bloc_action.dart';
import 'package:qclay/core/bloc/base_bloc_state.dart';
import 'package:qclay/data/gateways/local/preferences_local_gateway.dart';

import 'package:qclay/app/navigation/navigate_action.dart';
import 'package:qclay/app/navigation/navigation_type.dart';

part 'splash_bloc.freezed.dart';

part 'splash_event.dart';

part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc({
    required this.preferencesLocalGateway,
  }) : super(SplashState()) {
    on<Init>(_init);
    this.add(SplashEvent.init());
  }

  PreferencesLocalGateway preferencesLocalGateway;

  FutureOr<void> _init(
    Init event,
    Emitter<SplashState> emit,
  ) async {
    emit(state.copyWith(action: RegisterLocalization()));
    await Future.delayed(Duration(seconds: 2));
    String? token = await preferencesLocalGateway.getToken();
    if (token != null) {
      emit(state.copyWith(action: NavigateAction.navigateToNavigation(NavigateType.pushReplacement)));
    } else {
      emit(
        state.copyWith(
          action: NavigateAction.navigateToNavigation(NavigateType.pushReplacement),
        ),
      );
    }
  }
}
