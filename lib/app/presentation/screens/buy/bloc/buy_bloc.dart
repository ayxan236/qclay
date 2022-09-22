import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qclay/app/navigation/navigate_action.dart';
import 'package:qclay/app/navigation/navigation_type.dart';
import 'package:qclay/core/bloc/base_bloc_state.dart';
import 'package:qclay/core/bloc/bloc_action.dart';

part 'buy_state.dart';

part 'buy_event.dart';

part 'buy_bloc.freezed.dart';

class BuyBloc extends Bloc<BuyEvent, BuyState> {
  BuyBloc() : super(BuyState()) {
    on<Init>(_init);
  }

  FutureOr<void> _init(Init event, Emitter<BuyState> emit) {
    emit(state.copyWith());
  }
}
