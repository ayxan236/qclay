import 'dart:async';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/subjects.dart';
import 'package:qclay/core/bloc/bloc_action.dart';

part 'app_bloc.freezed.dart';

part 'app_event.dart';

part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppState()) {
    on<Init>(_init);
    on<AppLifecycleStateChanged>(_appLifecycleStateChanged);
    this.add(AppEvent.init());
  }

  BehaviorSubject<AppLifecycleState?> _appLifecycleStateSubject = BehaviorSubject.seeded(null);

  Stream<AppLifecycleState?> get appLifecycleStateStream => _appLifecycleStateSubject.stream;

  FutureOr<void> _init(Init event, Emitter<AppState> emit) async {}

  FutureOr<void> _appLifecycleStateChanged(
    AppLifecycleStateChanged event,
    Emitter<AppState> emit,
  ) {
    _appLifecycleStateSubject.add(event.state);
  }

  @override
  Future<void> close() async {
    await _appLifecycleStateSubject.close();
    return super.close();
  }
}
