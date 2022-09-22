import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qclay/app/navigation/navigate_action.dart';
import 'package:qclay/app/navigation/navigation_type.dart';
import 'package:qclay/core/bloc/base_bloc_state.dart';
import 'package:qclay/core/bloc/bloc_action.dart';
import 'package:qclay/domain/entities/transactions_entity.dart';
import 'package:qclay/domain/entities/user_entity.dart';
import 'package:qclay/gen/assets.gen.dart';

part 'wallet_state.dart';

part 'wallet_event.dart';

part 'wallet_bloc.freezed.dart';

class WalletBloc extends Bloc<WalletEvent, WalletState> {
  WalletBloc() : super(WalletState()) {
    on<Init>(_init);
    this.add(WalletEvent.init());
  }

  FutureOr<void> _init(Init event, Emitter<WalletState> emit) {
    _fetchUsers(emit);
  }

  FutureOr<void> _fetchUsers(Emitter<WalletState> emit) {
    emit(
      state.copyWith(usersList: [
        Users(id: 1, name: "Mathey", image: Assets.images.user1.path),
        Users(id: 2, name: "Bradly", image: Assets.images.user2.path),
        Users(id: 3, name: "Mathey", image: Assets.images.user3.path),
        Users(id: 4, name: "Bradly", image: Assets.images.user1.path),
        Users(id: 5, name: "Mathey", image: Assets.images.user2.path),
      ], transactions: [
        TransactionsEntity(
          cost: 3,
          image: Assets.images.transaction1.path,
          isIncrease: true,
          status: "Transfer",
          date: DateTime(2022, 09, 15),
        ),
        TransactionsEntity(
          cost: 1,
          image: Assets.images.transaction2.path,
          status: "Invited",
          isIncrease: true,
          date: DateTime(2022, 04, 1),
        )
      ]),
    );
  }
}
